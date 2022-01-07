
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* repeat_str; char* release_str; } ;
struct TYPE_4__ {void (* release_fct ) (int) ;int release_data; } ;
struct TYPE_6__ {TYPE_2__ kbd; TYPE_1__ std; } ;
struct logical_input {int mask; int value; scalar_t__ type; int high_timer; scalar_t__ fall_timer; scalar_t__ fall_time; void* state; TYPE_3__ u; } ;


 void* INPUT_ST_HIGH ;
 void* INPUT_ST_LOW ;
 scalar_t__ INPUT_TYPE_KBD ;
 scalar_t__ INPUT_TYPE_STD ;
 scalar_t__ KEYPAD_REP_DELAY ;
 int KEYPAD_REP_START ;
 scalar_t__ inputs_stable ;
 int keypad_send_key (char*,int) ;
 int keypressed ;
 int phys_curr ;
 int phys_prev ;

__attribute__((used)) static inline void input_state_falling(struct logical_input *input)
{
 if ((phys_curr & input->mask) == input->value) {
  if (input->type == INPUT_TYPE_KBD) {

   keypressed = 1;

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
  input->state = INPUT_ST_HIGH;
 } else if (input->fall_timer >= input->fall_time) {

  if (input->type == INPUT_TYPE_STD) {
   void (*release_fct)(int) = input->u.std.release_fct;

   if (release_fct)
    release_fct(input->u.std.release_data);
  } else if (input->type == INPUT_TYPE_KBD) {
   char *release_str = input->u.kbd.release_str;

   if (release_str[0]) {
    int s = sizeof(input->u.kbd.release_str);

    keypad_send_key(release_str, s);
   }
  }

  input->state = INPUT_ST_LOW;
 } else {
  input->fall_timer++;
  inputs_stable = 0;
 }
}
