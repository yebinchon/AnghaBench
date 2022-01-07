
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTROPY_BITS (int *) ;
 int add_timer_randomness (int *,unsigned int) ;
 int input_pool ;
 int input_timer_state ;
 int trace_add_input_randomness (int ) ;

void add_input_randomness(unsigned int type, unsigned int code,
     unsigned int value)
{
 static unsigned char last_value;


 if (value == last_value)
  return;

 last_value = value;
 add_timer_randomness(&input_timer_state,
        (type << 4) ^ code ^ (code >> 4) ^ value);
 trace_add_input_randomness(ENTROPY_BITS(&input_pool));
}
