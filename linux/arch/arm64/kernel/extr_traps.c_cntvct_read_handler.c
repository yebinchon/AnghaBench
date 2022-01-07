
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int AARCH64_INSN_SIZE ;
 int ESR_ELx_SYS64_ISS_RT (unsigned int) ;
 int arch_timer_read_counter () ;
 int arm64_skip_faulting_instruction (struct pt_regs*,int ) ;
 int pt_regs_write_reg (struct pt_regs*,int,int ) ;

__attribute__((used)) static void cntvct_read_handler(unsigned int esr, struct pt_regs *regs)
{
 int rt = ESR_ELx_SYS64_ISS_RT(esr);

 pt_regs_write_reg(regs, rt, arch_timer_read_counter());
 arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
}
