
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int irqreturn_t ;
struct TYPE_4__ {int mid_ctrl; int key_ctrl; int key_data; } ;
struct TYPE_3__ {int state; int len; int* buf; } ;


 int ACIA_CTS ;
 int ACIA_FE ;
 int ACIA_IRQ ;
 int ACIA_OVRN ;
 int ACIA_PE ;
 int ACIA_RDRF ;

 int BREAK_MASK ;

 int IRQ_HANDLED ;
 scalar_t__ IS_SYNC_CODE (int) ;


 int KTYP (int) ;
 int KT_LATIN ;
 int KT_LETTER ;
 int KVAL (int) ;


 TYPE_2__ acia ;
 int atari_MIDI_interrupt_hook () ;
 int atari_input_keyboard_interrupt_hook (unsigned char,int) ;
 int atari_input_mouse_interrupt_hook (int*) ;
 int atari_joystick_interrupt (int*) ;
 int broken_keys ;
 scalar_t__ ikbd_self_test ;
 int jiffies ;
 TYPE_1__ kb_state ;
 int pr_cont (char*,...) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int pr_warn (char*,int) ;
 int self_test_last_rcv ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static irqreturn_t atari_keyboard_interrupt(int irq, void *dummy)
{
 u_char acia_stat;
 int scancode;
 int break_flag;

repeat:
 if (acia.mid_ctrl & ACIA_IRQ)
  if (atari_MIDI_interrupt_hook)
   atari_MIDI_interrupt_hook();
 acia_stat = acia.key_ctrl;

 if (!((acia_stat | acia.mid_ctrl) & ACIA_IRQ))
  return IRQ_HANDLED;

 if (acia_stat & ACIA_OVRN) {


  pr_debug("Keyboard overrun\n");
  scancode = acia.key_data;
  if (ikbd_self_test)

   goto interpret_scancode;
  else if (IS_SYNC_CODE(scancode)) {


   kb_state.state = 130;
   goto interpret_scancode;
  } else {

   kb_state.state = 129;
   kb_state.len = 1;
   goto repeat;
  }
 }

 if (acia_stat & ACIA_RDRF) {

  scancode = acia.key_data;
 interpret_scancode:
  switch (kb_state.state) {
  case 130:
   switch (scancode) {
   case 0xF7:
    kb_state.state = 133;
    kb_state.len = 0;
    break;

   case 0xF8:
   case 0xF9:
   case 0xFA:
   case 0xFB:
    kb_state.state = 128;
    kb_state.len = 1;
    kb_state.buf[0] = scancode;
    break;

   case 0xFC:
    kb_state.state = 132;
    kb_state.len = 0;
    break;

   case 0xFE:
   case 0xFF:
    kb_state.state = 131;
    kb_state.len = 1;
    kb_state.buf[0] = scancode;
    break;

   case 0xF1:

    if (ikbd_self_test) {
     ++ikbd_self_test;
     self_test_last_rcv = jiffies;
     break;
    }


   default:
    break_flag = scancode & BREAK_MASK;
    scancode &= ~BREAK_MASK;
    if (ikbd_self_test) {






     int keyval, keytyp;

     set_bit(scancode, broken_keys);
     self_test_last_rcv = jiffies;

     keyval = scancode;
     keytyp = KTYP(keyval) - 0xf0;
     keyval = KVAL(keyval);

     pr_warn("Key with scancode %d ", scancode);
     if (keytyp == KT_LATIN || keytyp == KT_LETTER) {
      if (keyval < ' ')
       pr_cont("('^%c') ", keyval + '@');
      else
       pr_cont("('%c') ", keyval);
     }
     pr_cont("is broken -- will be ignored.\n");
     break;
    } else if (test_bit(scancode, broken_keys))
     break;

    if (atari_input_keyboard_interrupt_hook)
     atari_input_keyboard_interrupt_hook((unsigned char)scancode, !break_flag);
    break;
   }
   break;

  case 133:
   kb_state.buf[kb_state.len++] = scancode;
   if (kb_state.len == 5) {
    kb_state.state = 130;


   }
   break;

  case 128:
   kb_state.buf[kb_state.len++] = scancode;
   if (kb_state.len == 3) {
    kb_state.state = 130;
    if (atari_input_mouse_interrupt_hook)
     atari_input_mouse_interrupt_hook(kb_state.buf);
   }
   break;

  case 131:
   kb_state.buf[1] = scancode;
   kb_state.state = 130;



   break;

  case 132:
   kb_state.buf[kb_state.len++] = scancode;
   if (kb_state.len == 6) {
    kb_state.state = 130;




   }
   break;

  case 129:
   if (kb_state.len <= 0 || IS_SYNC_CODE(scancode)) {
    kb_state.state = 130;
    goto interpret_scancode;
   }
   kb_state.len--;
   break;
  }
 }






 if (acia_stat & (ACIA_FE | ACIA_PE)) {
  pr_err("Error in keyboard communication\n");
 }




 goto repeat;
}
