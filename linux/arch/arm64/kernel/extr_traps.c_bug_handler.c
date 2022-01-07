
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;


 int AARCH64_INSN_SIZE ;


 int DBG_HOOK_ERROR ;
 int DBG_HOOK_HANDLED ;
 int arm64_skip_faulting_instruction (struct pt_regs*,int ) ;
 int die (char*,struct pt_regs*,int ) ;
 int report_bug (int ,struct pt_regs*) ;

__attribute__((used)) static int bug_handler(struct pt_regs *regs, unsigned int esr)
{
 switch (report_bug(regs->pc, regs)) {
 case 129:
  die("Oops - BUG", regs, 0);
  break;

 case 128:
  break;

 default:

  return DBG_HOOK_ERROR;
 }


 arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
 return DBG_HOOK_HANDLED;
}
