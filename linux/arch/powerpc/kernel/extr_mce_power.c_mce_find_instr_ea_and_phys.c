
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct pt_regs {unsigned long nip; } ;
struct instruction_op {unsigned long ea; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long ULONG_MAX ;
 unsigned long addr_to_pfn (struct pt_regs*,unsigned long) ;
 int analyse_instr (struct instruction_op*,struct pt_regs*,int) ;

__attribute__((used)) static int mce_find_instr_ea_and_phys(struct pt_regs *regs, uint64_t *addr,
     uint64_t *phys_addr)
{






 int instr;
 unsigned long pfn, instr_addr;
 struct instruction_op op;
 struct pt_regs tmp = *regs;

 pfn = addr_to_pfn(regs, regs->nip);
 if (pfn != ULONG_MAX) {
  instr_addr = (pfn << PAGE_SHIFT) + (regs->nip & ~PAGE_MASK);
  instr = *(unsigned int *)(instr_addr);
  if (!analyse_instr(&op, &tmp, instr)) {
   pfn = addr_to_pfn(regs, op.ea);
   *addr = op.ea;
   *phys_addr = (pfn << PAGE_SHIFT);
   return 0;
  }






 }
 *addr = 0;
 return -1;
}
