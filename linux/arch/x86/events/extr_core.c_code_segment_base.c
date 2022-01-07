
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; int cs; } ;


 int X86_VM_MASK ;
 int __USER32_CS ;
 int __USER_CS ;
 unsigned long get_segment_base (int) ;
 int user_64bit_mode (struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static unsigned long code_segment_base(struct pt_regs *regs)
{
 if (user_mode(regs) && !user_64bit_mode(regs) &&
     regs->cs != __USER32_CS)
  return get_segment_base(regs->cs);

 return 0;
}
