
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {int dummy; } ;
struct unwind_state {unsigned long stack_mask; int task; struct stack_info stack_info; } ;
struct stack_frame {int dummy; } ;


 scalar_t__ get_stack_info (unsigned long,int ,struct stack_info*,unsigned long*) ;
 int on_stack (struct stack_info*,unsigned long,int) ;

__attribute__((used)) static bool update_stack_info(struct unwind_state *state, unsigned long sp)
{
 struct stack_info *info = &state->stack_info;
 unsigned long *mask = &state->stack_mask;


 if (get_stack_info(sp, state->task, info, mask) != 0 ||
     !on_stack(info, sp, sizeof(struct stack_frame)))

  return 0;
 return 1;
}
