
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int pc; } ;


 int ESR_ELx_SYS64_ISS_RT (unsigned int) ;
 int ILL_ILLOPC ;
 int SIGILL ;
 scalar_t__ do_emulate_mrs (struct pt_regs*,int ,int ) ;
 int esr_sys64_to_sysreg (unsigned int) ;
 int force_signal_inject (int ,int ,int ) ;

__attribute__((used)) static void mrs_handler(unsigned int esr, struct pt_regs *regs)
{
 u32 sysreg, rt;

 rt = ESR_ELx_SYS64_ISS_RT(esr);
 sysreg = esr_sys64_to_sysreg(esr);

 if (do_emulate_mrs(regs, sysreg, rt) != 0)
  force_signal_inject(SIGILL, ILL_ILLOPC, regs->pc);
}
