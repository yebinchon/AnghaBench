
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* press_str; char* repeat_str; } ;
struct TYPE_4__ {int press_data; int (* press_fct ) (int ) ;} ;
struct TYPE_6__ {TYPE_2__ kbd; TYPE_1__ std; } ;
struct logical_input {int mask; int value; scalar_t__ type; int high_timer; scalar_t__ fall_timer; int state; TYPE_3__ u; } ;


 int INPUT_ST_FALLING ;
 int INPUT_ST_LOW ;
 scalar_t__ INPUT_TYPE_KBD ;
 scalar_t__ INPUT_TYPE_STD ;
 scalar_t__ KEYPAD_REP_DELAY ;
 int KEYPAD_REP_START ;
 scalar_t__ inputs_stable ;
 int keypad_send_key (char*,int) ;
 int keypressed ;
 int phys_curr ;
 int phys_prev ;
 int stub1 (int ) ;

__attribute__((used)) static inline int input_state_high(struct logical_input *input)
{
 if ((phys_curr & input->mask) == input->value) {
  if ((input->type == INPUT_TYPE_STD) &&
      (input->high_timer == 0)) {
   input->high_timer++;
   if (input->u.std.press_fct)
    input->u.std.press_fct(input->u.std.press_data);
  } else if (input->type == INPUT_TYPE_KBD) {

   keypressed = 1;

   if (input->high_timer == 0) {
    char *press_str = input->u.kbd.press_str;

    if (press_str[0]) {
     int s = sizeof(input->u.kbd.press_str);

     keypad_send_key(press_str, s);
    }
   }

   if (input->u.kbd.repeat_str[0]) {
    char *repeat_str = input->u.kbd.repeat_str;

    if (input->high_timer >= KEYPAD_REP_START) {
     int s = sizeof(input->u.kbd.repeat_str);

     input->high_timer -= KEYPAD_REP_DELAY;
     keypad_send_key(repeat_str, s);
    }

    inputs_stable = 0;
   }

   if (input->high_timer < 255)
    input->high_timer++;
  }
  return 1;
 }


 input->state = INPUT_ST_FALLING;
 input->fall_timer = 0;

 return 0;
}
