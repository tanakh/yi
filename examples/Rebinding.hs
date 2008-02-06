module YiConfig (yiMain) where

import Yi.Yi
import Yi.Editor
import Yi.Keymap.Emacs
import Control.Monad.Trans
import Yi.Buffer

yiMain :: YiM ()
yiMain = do
  -- override 'h' so it inserts "hello"
  changeKeymap ((event (Event (KASCII 'h') []) >> write (insertN "hello"))
                    <|| keymap)
  msgEditor "User configuration successful."
