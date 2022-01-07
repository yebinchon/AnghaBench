
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stacktrace_ops {int (* address ) (void*,unsigned long,int) ;} ;
struct pt_regs {int pc; unsigned long* regs; } ;


 unsigned long __MEMORY_START ;
 scalar_t__ lookup_prev_stack_frame (unsigned long,unsigned long,unsigned long*,unsigned long*,struct pt_regs*) ;
 int printk (char*) ;
 int ret_from_exception ;
 int ret_from_irq ;
 int ret_from_syscall ;
 int stub1 (void*,unsigned long,int) ;
 int syscall_ret ;
 int unwind_nested (struct stacktrace_ops const*,void*,unsigned long,unsigned long) ;

__attribute__((used)) static void sh64_unwind_inner(const struct stacktrace_ops *ops,
         void *data, struct pt_regs *regs)
{
 unsigned long pc, fp;
 int ofs = 0;
 int first_pass;

 pc = regs->pc & ~1;
 fp = regs->regs[14];

 first_pass = 1;
 for (;;) {
  int cond;
  unsigned long next_fp, next_pc;

  if (pc == ((unsigned long)&syscall_ret & ~1)) {
   printk("SYSCALL\n");
   unwind_nested(ops, data, pc, fp);
   return;
  }

  if (pc == ((unsigned long)&ret_from_syscall & ~1)) {
   printk("SYSCALL (PREEMPTED)\n");
   unwind_nested(ops, data, pc, fp);
   return;
  }



  if (pc == ((unsigned long)&ret_from_exception & ~1)) {
   printk("EXCEPTION\n");
   unwind_nested(ops, data, pc, fp);
   return;
  }

  if (pc == ((unsigned long)&ret_from_irq & ~1)) {
   printk("IRQ\n");
   unwind_nested(ops, data, pc, fp);
   return;
  }

  cond = ((pc >= __MEMORY_START) && (fp >= __MEMORY_START) &&
   ((pc & 3) == 0) && ((fp & 7) == 0));

  pc -= ofs;

  ops->address(data, pc, 1);

  if (first_pass) {



   next_pc = regs->regs[18];
  } else {
   next_pc = 0;
  }

  if (lookup_prev_stack_frame(fp, pc, &next_fp, &next_pc, regs) == 0) {
   ofs = sizeof(unsigned long);
   pc = next_pc & ~1;
   fp = next_fp;
  } else {
   printk("Unable to lookup previous stack frame\n");
   break;
  }
  first_pass = 0;
 }

 printk("\n");
}
