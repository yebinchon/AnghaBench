
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unwind_state {scalar_t__ sp; TYPE_1__* regs; } ;
struct TYPE_2__ {unsigned long ip; } ;


 scalar_t__ unwind_done (struct unwind_state*) ;

unsigned long *unwind_get_return_address_ptr(struct unwind_state *state)
{
 if (unwind_done(state))
  return ((void*)0);

 if (state->regs)
  return &state->regs->ip;

 if (state->sp)
  return (unsigned long *)state->sp - 1;

 return ((void*)0);
}
