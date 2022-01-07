
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* type; int next_sp; } ;
struct unwind_state {unsigned long stack_mask; void* graph_idx; int task; int orig_sp; TYPE_1__ stack_info; } ;
struct stack_info {unsigned long* end; int next_sp; int member_0; } ;


 int BITS_PER_LONG ;
 unsigned long* PTR_ALIGN (int ,int) ;
 unsigned long READ_ONCE_NOCHECK (unsigned long) ;
 scalar_t__ get_stack_info (unsigned long*,int ,struct stack_info*,unsigned long*) ;
 int printk_deferred (char*,unsigned long*,int,unsigned long,...) ;

__attribute__((used)) static void unwind_dump(struct unwind_state *state)
{
 static bool dumped_before = 0;
 bool prev_zero, zero = 0;
 unsigned long word, *sp;
 struct stack_info stack_info = {0};
 unsigned long visit_mask = 0;

 if (dumped_before)
  return;

 dumped_before = 1;

 printk_deferred("unwind stack type:%d next_sp:%p mask:0x%lx graph_idx:%d\n",
   state->stack_info.type, state->stack_info.next_sp,
   state->stack_mask, state->graph_idx);

 for (sp = PTR_ALIGN(state->orig_sp, sizeof(long)); sp;
      sp = PTR_ALIGN(stack_info.next_sp, sizeof(long))) {
  if (get_stack_info(sp, state->task, &stack_info, &visit_mask))
   break;

  for (; sp < stack_info.end; sp++) {

   word = READ_ONCE_NOCHECK(*sp);

   prev_zero = zero;
   zero = word == 0;

   if (zero) {
    if (!prev_zero)
     printk_deferred("%p: %0*x ...\n",
       sp, BITS_PER_LONG/4, 0);
    continue;
   }

   printk_deferred("%p: %0*lx (%pB)\n",
     sp, BITS_PER_LONG/4, word, (void *)word);
  }
 }
}
