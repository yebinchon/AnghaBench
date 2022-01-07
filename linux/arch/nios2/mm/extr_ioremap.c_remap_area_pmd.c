
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int BUG () ;
 int ENOMEM ;
 unsigned long PGDIR_MASK ;
 unsigned long PGDIR_SIZE ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int remap_area_pte (int *,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline int remap_area_pmd(pmd_t *pmd, unsigned long address,
    unsigned long size, unsigned long phys_addr,
    unsigned long flags)
{
 unsigned long end;

 address &= ~PGDIR_MASK;
 end = address + size;
 if (end > PGDIR_SIZE)
  end = PGDIR_SIZE;
 phys_addr -= address;
 if (address >= end)
  BUG();
 do {
  pte_t *pte = pte_alloc_kernel(pmd, address);

  if (!pte)
   return -ENOMEM;
  remap_area_pte(pte, address, end - address, address + phys_addr,
   flags);
  address = (address + PMD_SIZE) & PMD_MASK;
  pmd++;
 } while (address && (address < end));
 return 0;
}
