
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int PAGE_KERNEL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int pfn_pte (int ,int ) ;
 unsigned long pte_val (int ) ;
 unsigned long* ptelist ;
 int sun3_put_pte (unsigned long,unsigned long) ;
 int virt_to_pfn (unsigned long) ;

__attribute__((used)) static unsigned long dvma_page(unsigned long kaddr, unsigned long vaddr)
{
 unsigned long pte;
 unsigned long j;
 pte_t ptep;

 j = *(volatile unsigned long *)kaddr;
 *(volatile unsigned long *)kaddr = j;

 ptep = pfn_pte(virt_to_pfn(kaddr), PAGE_KERNEL);
 pte = pte_val(ptep);

 if(ptelist[(vaddr & 0xff000) >> PAGE_SHIFT] != pte) {
  sun3_put_pte(vaddr, pte);
  ptelist[(vaddr & 0xff000) >> PAGE_SHIFT] = pte;
 }

 return (vaddr + (kaddr & ~PAGE_MASK));

}
