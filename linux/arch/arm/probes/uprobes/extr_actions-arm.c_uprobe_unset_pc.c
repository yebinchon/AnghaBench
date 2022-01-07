
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * uregs; } ;
struct arch_uprobe_task {int backup; } ;
struct arch_uprobe {size_t pcreg; } ;



__attribute__((used)) static void uprobe_unset_pc(struct arch_uprobe *auprobe,
       struct arch_uprobe_task *autask,
       struct pt_regs *regs)
{

 regs->uregs[auprobe->pcreg] = autask->backup;
}
