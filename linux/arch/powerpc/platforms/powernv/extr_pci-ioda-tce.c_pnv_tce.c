
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int it_indirect_levels; int it_level_size; int it_nid; scalar_t__ it_base; int * it_userspace; } ;
typedef int __be64 ;


 int READ_ONCE (int ) ;
 unsigned long TCE_PCI_READ ;
 unsigned long TCE_PCI_WRITE ;
 unsigned long __pa (int *) ;
 int * __va (unsigned long) ;
 unsigned long be64_to_cpu (int ) ;
 int cmpxchg (int *,int ,int ) ;
 int cpu_to_be64 (unsigned long) ;
 int ilog2 (int) ;
 int * pnv_alloc_tce_level (int ,int) ;
 int pnv_pci_ioda2_table_do_free_pages (int *,int,int) ;

__attribute__((used)) static __be64 *pnv_tce(struct iommu_table *tbl, bool user, long idx, bool alloc)
{
 __be64 *tmp = user ? tbl->it_userspace : (__be64 *) tbl->it_base;
 int level = tbl->it_indirect_levels;
 const long shift = ilog2(tbl->it_level_size);
 unsigned long mask = (tbl->it_level_size - 1) << (level * shift);

 while (level) {
  int n = (idx & mask) >> (level * shift);
  unsigned long oldtce, tce = be64_to_cpu(READ_ONCE(tmp[n]));

  if (!tce) {
   __be64 *tmp2;

   if (!alloc)
    return ((void*)0);

   tmp2 = pnv_alloc_tce_level(tbl->it_nid,
     ilog2(tbl->it_level_size) + 3);
   if (!tmp2)
    return ((void*)0);

   tce = __pa(tmp2) | TCE_PCI_READ | TCE_PCI_WRITE;
   oldtce = be64_to_cpu(cmpxchg(&tmp[n], 0,
     cpu_to_be64(tce)));
   if (oldtce) {
    pnv_pci_ioda2_table_do_free_pages(tmp2,
     ilog2(tbl->it_level_size) + 3, 1);
    tce = oldtce;
   }
  }

  tmp = __va(tce & ~(TCE_PCI_READ | TCE_PCI_WRITE));
  idx &= ~mask;
  mask >>= shift;
  --level;
 }

 return tmp + idx;
}
