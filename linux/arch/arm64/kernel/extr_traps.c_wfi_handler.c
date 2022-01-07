
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int AARCH64_INSN_SIZE ;
 int arm64_skip_faulting_instruction (struct pt_regs*,int ) ;

__attribute__((used)) static void wfi_handler(unsigned int esr, struct pt_regs *regs)
{
 arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
}
