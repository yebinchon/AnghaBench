
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unwind_state {unsigned long* bp; TYPE_1__* regs; } ;
struct TYPE_2__ {unsigned long ip; } ;


 scalar_t__ unwind_done (struct unwind_state*) ;

unsigned long *unwind_get_return_address_ptr(struct unwind_state *state)
{
 if (unwind_done(state))
  return ((void*)0);

 return state->regs ? &state->regs->ip : state->bp + 1;
}
