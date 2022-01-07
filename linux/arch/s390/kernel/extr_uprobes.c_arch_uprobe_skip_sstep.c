
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
struct pt_regs {TYPE_2__ psw; } ;
struct arch_uprobe {int insn; } ;
struct TYPE_4__ {scalar_t__ eaba; } ;


 int ILL_ILLADR ;
 scalar_t__ PSW_BITS_AMODE_24BIT ;
 scalar_t__ PSW_BITS_AMODE_31BIT ;
 int SIGILL ;
 int UPROBE_SWBP_INSN_SIZE ;
 int __rewind_psw (TYPE_2__,int ) ;
 int do_report_trap (struct pt_regs*,int ,int ,int *) ;
 int handle_insn_ril (struct arch_uprobe*,struct pt_regs*) ;
 int is_compat_task () ;
 scalar_t__ probe_is_insn_relative_long (int ) ;
 TYPE_1__ psw_bits (TYPE_2__) ;

bool arch_uprobe_skip_sstep(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 if ((psw_bits(regs->psw).eaba == PSW_BITS_AMODE_24BIT) ||
     ((psw_bits(regs->psw).eaba == PSW_BITS_AMODE_31BIT) &&
      !is_compat_task())) {
  regs->psw.addr = __rewind_psw(regs->psw, UPROBE_SWBP_INSN_SIZE);
  do_report_trap(regs, SIGILL, ILL_ILLADR, ((void*)0));
  return 1;
 }
 if (probe_is_insn_relative_long(auprobe->insn)) {
  handle_insn_ril(auprobe, regs);
  return 1;
 }
 return 0;
}
