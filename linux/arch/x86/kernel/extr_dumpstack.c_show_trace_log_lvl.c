
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;
struct task_struct {int dummy; } ;
struct stack_info {unsigned long* end; int type; int next_sp; int member_0; } ;
struct pt_regs {unsigned long ip; } ;


 scalar_t__ PAGE_ALIGN (unsigned long) ;
 unsigned long* PTR_ALIGN (int ,int) ;
 unsigned long READ_ONCE_NOCHECK (unsigned long) ;
 int __kernel_text_address (unsigned long) ;
 unsigned long ftrace_graph_ret_addr (struct task_struct*,int*,unsigned long,unsigned long*) ;
 scalar_t__ get_stack_info (unsigned long*,struct task_struct*,struct stack_info*,unsigned long*) ;
 unsigned long* get_stack_pointer (struct task_struct*,struct pt_regs*) ;
 int printk (char*,char*,...) ;
 int printk_stack_address (unsigned long,int,char*) ;
 int show_regs_if_on_stack (struct stack_info*,struct pt_regs*,int) ;
 char* stack_type_name (int ) ;
 struct pt_regs* unwind_get_entry_regs (struct unwind_state*,int*) ;
 unsigned long* unwind_get_return_address_ptr (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;
 int unwind_start (struct unwind_state*,struct task_struct*,struct pt_regs*,unsigned long*) ;

void show_trace_log_lvl(struct task_struct *task, struct pt_regs *regs,
   unsigned long *stack, char *log_lvl)
{
 struct unwind_state state;
 struct stack_info stack_info = {0};
 unsigned long visit_mask = 0;
 int graph_idx = 0;
 bool partial = 0;

 printk("%sCall Trace:\n", log_lvl);

 unwind_start(&state, task, regs, stack);
 stack = stack ? : get_stack_pointer(task, regs);
 regs = unwind_get_entry_regs(&state, &partial);
 for ( ; stack; stack = PTR_ALIGN(stack_info.next_sp, sizeof(long))) {
  const char *stack_name;

  if (get_stack_info(stack, task, &stack_info, &visit_mask)) {






   stack = (unsigned long *)PAGE_ALIGN((unsigned long)stack);
   if (get_stack_info(stack, task, &stack_info, &visit_mask))
    break;
  }

  stack_name = stack_type_name(stack_info.type);
  if (stack_name)
   printk("%s <%s>\n", log_lvl, stack_name);

  if (regs)
   show_regs_if_on_stack(&stack_info, regs, partial);
  for (; stack < stack_info.end; stack++) {
   unsigned long real_addr;
   int reliable = 0;
   unsigned long addr = READ_ONCE_NOCHECK(*stack);
   unsigned long *ret_addr_p =
    unwind_get_return_address_ptr(&state);

   if (!__kernel_text_address(addr))
    continue;





   if (regs && stack == &regs->ip)
    goto next;

   if (stack == ret_addr_p)
    reliable = 1;
   real_addr = ftrace_graph_ret_addr(task, &graph_idx,
         addr, stack);
   if (real_addr != addr)
    printk_stack_address(addr, 0, log_lvl);
   printk_stack_address(real_addr, reliable, log_lvl);

   if (!reliable)
    continue;

next:





   unwind_next_frame(&state);


   regs = unwind_get_entry_regs(&state, &partial);
   if (regs)
    show_regs_if_on_stack(&stack_info, regs, partial);
  }

  if (stack_name)
   printk("%s </%s>\n", log_lvl, stack_name);
 }
}
