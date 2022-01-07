
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct arch_uprobe_task {scalar_t__ saved_tnpc; } ;
struct uprobe_task {scalar_t__ state; scalar_t__ vaddr; struct arch_uprobe_task autask; } ;
struct pt_regs {scalar_t__ tpc; scalar_t__ tnpc; } ;
struct arch_uprobe {int ixol; } ;
struct TYPE_2__ {struct uprobe_task* utask; } ;


 scalar_t__ UTASK_SSTEP_ACK ;
 TYPE_1__* current ;
 scalar_t__ relbranch_fixup (int ,struct uprobe_task*,struct pt_regs*) ;
 int retpc_fixup (struct pt_regs*,int ,unsigned long) ;

int arch_uprobe_post_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;
 struct arch_uprobe_task *autask = &utask->autask;
 u32 insn = auprobe->ixol;
 int rc = 0;

 if (utask->state == UTASK_SSTEP_ACK) {
  regs->tnpc = relbranch_fixup(insn, utask, regs);
  regs->tpc = autask->saved_tnpc;
  rc = retpc_fixup(regs, insn, (unsigned long) utask->vaddr);
 } else {
  regs->tnpc = utask->vaddr+4;
  regs->tpc = autask->saved_tnpc+4;
 }
 return rc;
}
