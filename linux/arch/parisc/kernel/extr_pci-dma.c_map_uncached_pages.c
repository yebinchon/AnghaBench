
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;
typedef int pgd_t ;


 int ENOMEM ;
 unsigned long PGDIR_SIZE ;
 scalar_t__ map_pmd_uncached (int *,unsigned long,unsigned long,unsigned long*) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;

__attribute__((used)) static inline int map_uncached_pages(unsigned long vaddr, unsigned long size,
  unsigned long paddr)
{
 pgd_t * dir;
 unsigned long end = vaddr + size;

 dir = pgd_offset_k(vaddr);
 do {
  pmd_t *pmd;

  pmd = pmd_alloc(((void*)0), dir, vaddr);
  if (!pmd)
   return -ENOMEM;
  if (map_pmd_uncached(pmd, vaddr, end - vaddr, &paddr))
   return -ENOMEM;
  vaddr = vaddr + PGDIR_SIZE;
  dir++;
 } while (vaddr && (vaddr < end));
 return 0;
}
