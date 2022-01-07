
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pt_regs {scalar_t__ ARM_pc; scalar_t__* uregs; } ;
struct arch_uprobe_task {scalar_t__ backup; } ;
struct arch_uprobe {size_t pcreg; } ;



__attribute__((used)) static void uprobe_set_pc(struct arch_uprobe *auprobe,
     struct arch_uprobe_task *autask,
     struct pt_regs *regs)
{
 u32 pcreg = auprobe->pcreg;

 autask->backup = regs->uregs[pcreg];
 regs->uregs[pcreg] = regs->ARM_pc + 8;
}
