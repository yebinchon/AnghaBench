
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cpuinfo_or1k {unsigned long dcache_block_size; } ;
typedef unsigned long phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;




 int SPR_DCBFR ;
 int SPR_DCBIR ;
 struct cpuinfo_or1k* cpuinfo_or1k ;
 int mtspr (int ,unsigned long) ;
 size_t smp_processor_id () ;

void arch_sync_dma_for_device(struct device *dev, phys_addr_t addr, size_t size,
  enum dma_data_direction dir)
{
 unsigned long cl;
 struct cpuinfo_or1k *cpuinfo = &cpuinfo_or1k[smp_processor_id()];

 switch (dir) {
 case 128:

  for (cl = addr; cl < addr + size;
       cl += cpuinfo->dcache_block_size)
   mtspr(SPR_DCBFR, cl);
  break;
 case 129:

  for (cl = addr; cl < addr + size;
       cl += cpuinfo->dcache_block_size)
   mtspr(SPR_DCBIR, cl);
  break;
 default:





  break;
 }
}
