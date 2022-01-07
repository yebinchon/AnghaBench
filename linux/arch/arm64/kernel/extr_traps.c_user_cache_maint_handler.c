
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;


 int AARCH64_INSN_SIZE ;






 unsigned int ESR_ELx_SYS64_ISS_CRM_MASK ;
 unsigned int ESR_ELx_SYS64_ISS_CRM_SHIFT ;
 int ESR_ELx_SYS64_ISS_RT (unsigned int) ;
 int ILL_ILLOPC ;
 int SIGILL ;
 int __user_cache_maint (char*,unsigned long,int) ;
 int arm64_notify_segfault (unsigned long) ;
 int arm64_skip_faulting_instruction (struct pt_regs*,int ) ;
 int force_signal_inject (int ,int ,int ) ;
 int pt_regs_read_reg (struct pt_regs*,int) ;
 unsigned long untagged_addr (int ) ;

__attribute__((used)) static void user_cache_maint_handler(unsigned int esr, struct pt_regs *regs)
{
 unsigned long address;
 int rt = ESR_ELx_SYS64_ISS_RT(esr);
 int crm = (esr & ESR_ELx_SYS64_ISS_CRM_MASK) >> ESR_ELx_SYS64_ISS_CRM_SHIFT;
 int ret = 0;

 address = untagged_addr(pt_regs_read_reg(regs, rt));

 switch (crm) {
 case 129:
  __user_cache_maint("dc civac", address, ret);
  break;
 case 132:
  __user_cache_maint("dc civac", address, ret);
  break;
 case 131:
  __user_cache_maint("sys 3, c7, c13, 1", address, ret);
  break;
 case 130:
  __user_cache_maint("sys 3, c7, c12, 1", address, ret);
  break;
 case 133:
  __user_cache_maint("dc civac", address, ret);
  break;
 case 128:
  __user_cache_maint("ic ivau", address, ret);
  break;
 default:
  force_signal_inject(SIGILL, ILL_ILLOPC, regs->pc);
  return;
 }

 if (ret)
  arm64_notify_segfault(address);
 else
  arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
}
