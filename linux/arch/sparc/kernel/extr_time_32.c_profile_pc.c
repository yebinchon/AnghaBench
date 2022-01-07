
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; unsigned long* u_regs; } ;


 size_t UREG_RETPC ;
 scalar_t__ in_lock_functions (unsigned long) ;

unsigned long profile_pc(struct pt_regs *regs)
{
 extern char __copy_user_begin[], __copy_user_end[];
 extern char __bzero_begin[], __bzero_end[];

 unsigned long pc = regs->pc;

 if (in_lock_functions(pc) ||
     (pc >= (unsigned long) __copy_user_begin &&
      pc < (unsigned long) __copy_user_end) ||
     (pc >= (unsigned long) __bzero_begin &&
      pc < (unsigned long) __bzero_end))
  pc = regs->u_regs[UREG_RETPC];
 return pc;
}
