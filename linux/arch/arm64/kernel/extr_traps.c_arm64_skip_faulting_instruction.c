
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; } ;


 int current ;
 int user_fastforward_single_step (int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void arm64_skip_faulting_instruction(struct pt_regs *regs, unsigned long size)
{
 regs->pc += size;





 if (user_mode(regs))
  user_fastforward_single_step(current);
}
