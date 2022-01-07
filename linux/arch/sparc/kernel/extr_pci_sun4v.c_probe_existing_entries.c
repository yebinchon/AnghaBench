
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_pbm_info {int devhandle; } ;
struct iommu_pool {unsigned long start; unsigned long end; } ;
struct iommu_map_table {unsigned long nr_pools; int map; struct iommu_pool* pools; } ;


 unsigned long HV_EOK ;
 int HV_PCI_TSBID (int ,unsigned long) ;
 int __set_bit (unsigned long,int ) ;
 scalar_t__ page_in_phys_avail (unsigned long) ;
 int pci_sun4v_iommu_demap (int ,int ,int) ;
 unsigned long pci_sun4v_iommu_getmap (int ,int ,unsigned long*,unsigned long*) ;

__attribute__((used)) static unsigned long probe_existing_entries(struct pci_pbm_info *pbm,
         struct iommu_map_table *iommu)
{
 struct iommu_pool *pool;
 unsigned long i, pool_nr, cnt = 0;
 u32 devhandle;

 devhandle = pbm->devhandle;
 for (pool_nr = 0; pool_nr < iommu->nr_pools; pool_nr++) {
  pool = &(iommu->pools[pool_nr]);
  for (i = pool->start; i <= pool->end; i++) {
   unsigned long ret, io_attrs, ra;

   ret = pci_sun4v_iommu_getmap(devhandle,
           HV_PCI_TSBID(0, i),
           &io_attrs, &ra);
   if (ret == HV_EOK) {
    if (page_in_phys_avail(ra)) {
     pci_sun4v_iommu_demap(devhandle,
             HV_PCI_TSBID(0,
             i), 1);
    } else {
     cnt++;
     __set_bit(i, iommu->map);
    }
   }
  }
 }
 return cnt;
}
