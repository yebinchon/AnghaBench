
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;


 int ANNUL_BIT ;
 int UPROBE_STP_INSN ;
 int copy_to_page (struct page*,unsigned long,int const*,int) ;

void arch_uprobe_copy_ixol(struct page *page, unsigned long vaddr,
      void *src, unsigned long len)
{
 const u32 stp_insn = UPROBE_STP_INSN;
 u32 insn = *(u32 *) src;







 u32 op = (insn >> 30) & 0x3;
 u32 op2 = (insn >> 22) & 0x7;

 if (op == 0 &&
     (op2 == 1 || op2 == 2 || op2 == 3 || op2 == 5 || op2 == 6) &&
     (insn & ANNUL_BIT) == ANNUL_BIT)
  insn &= ~ANNUL_BIT;

 copy_to_page(page, vaddr, &insn, len);
 copy_to_page(page, vaddr+len, &stp_insn, 4);
}
