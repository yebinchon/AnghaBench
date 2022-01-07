
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgprot_t ;


 int BUG () ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PFN_DOWN (unsigned long) ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 unsigned long _PAGE_GLOBAL ;
 unsigned long _PAGE_PRESENT ;
 unsigned long _PAGE_READ ;
 unsigned long _PAGE_WRITE ;
 int __pgprot (unsigned long) ;
 int pfn_pte (unsigned long,int ) ;
 int pr_err (char*) ;
 int pte_none (int ) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static inline void remap_area_pte(pte_t *pte, unsigned long address,
    unsigned long size, unsigned long phys_addr,
    unsigned long flags)
{
 unsigned long end;
 unsigned long pfn;
 pgprot_t pgprot = __pgprot(_PAGE_GLOBAL | _PAGE_PRESENT | _PAGE_READ
    | _PAGE_WRITE | flags);

 address &= ~PMD_MASK;
 end = address + size;
 if (end > PMD_SIZE)
  end = PMD_SIZE;
 if (address >= end)
  BUG();
 pfn = PFN_DOWN(phys_addr);
 do {
  if (!pte_none(*pte)) {
   pr_err("remap_area_pte: page already exists\n");
   BUG();
  }
  set_pte(pte, pfn_pte(pfn, pgprot));
  address += PAGE_SIZE;
  pfn++;
  pte++;
 } while (address && (address < end));
}
