
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pt_regs {int * uregs; } ;
struct arch_uprobe_task {int backup; } ;
struct arch_uprobe {size_t pcreg; } ;


 int load_write_pc (int ,struct pt_regs*) ;

__attribute__((used)) static void uprobe_write_pc(struct arch_uprobe *auprobe,
       struct arch_uprobe_task *autask,
       struct pt_regs *regs)
{
 u32 pcreg = auprobe->pcreg;

 load_write_pc(regs->uregs[pcreg], regs);
 regs->uregs[pcreg] = autask->backup;
}
