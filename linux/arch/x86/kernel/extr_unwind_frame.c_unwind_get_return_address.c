
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {unsigned long ip; } ;


 scalar_t__ __kernel_text_address (unsigned long) ;
 scalar_t__ unwind_done (struct unwind_state*) ;

unsigned long unwind_get_return_address(struct unwind_state *state)
{
 if (unwind_done(state))
  return 0;

 return __kernel_text_address(state->ip) ? state->ip : 0;
}
