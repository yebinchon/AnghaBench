
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long saved_tnpc; } ;
struct uprobe_task {unsigned long xol_vaddr; scalar_t__ vaddr; TYPE_1__ autask; } ;
struct pt_regs {scalar_t__ tnpc; scalar_t__ tpc; } ;



__attribute__((used)) static unsigned long relbranch_fixup(u32 insn, struct uprobe_task *utask,
         struct pt_regs *regs)
{

 if (regs->tnpc == regs->tpc + 0x4UL)
  return utask->autask.saved_tnpc + 0x4UL;




 if ((insn & 0xc0000000) == 0x40000000 ||
     (insn & 0xc1c00000) == 0x00400000 ||
     (insn & 0xc1c00000) == 0x00800000) {
  unsigned long real_pc = (unsigned long) utask->vaddr;
  unsigned long ixol_addr = utask->xol_vaddr;





  return (real_pc + (regs->tnpc - ixol_addr));
 }




 return regs->tnpc;
}
