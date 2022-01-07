
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {int dummy; } ;
struct unwind_state {int stack_mask; int task; struct stack_info stack_info; } ;


 scalar_t__ get_stack_info (void*,int ,struct stack_info*,int *) ;
 int on_stack (struct stack_info*,void*,size_t) ;

__attribute__((used)) static bool stack_access_ok(struct unwind_state *state, unsigned long _addr,
       size_t len)
{
 struct stack_info *info = &state->stack_info;
 void *addr = (void *)_addr;

 if (!on_stack(info, addr, len) &&
     (get_stack_info(addr, state->task, info, &state->stack_mask)))
  return 0;

 return 1;
}
