
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int * sp; int graph_idx; int task; } ;


 unsigned long READ_ONCE_NOCHECK (int ) ;
 unsigned long ftrace_graph_ret_addr (int ,int *,unsigned long,int *) ;
 scalar_t__ unwind_done (struct unwind_state*) ;

unsigned long unwind_get_return_address(struct unwind_state *state)
{
 unsigned long addr;

 if (unwind_done(state))
  return 0;

 addr = READ_ONCE_NOCHECK(*state->sp);

 return ftrace_graph_ret_addr(state->task, &state->graph_idx,
         addr, state->sp);
}
