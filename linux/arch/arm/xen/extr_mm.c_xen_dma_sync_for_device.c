
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GNTTAB_CACHE_CLEAN ;
 int GNTTAB_CACHE_INVAL ;
 int PFN_DOWN (int ) ;
 int arch_sync_dma_for_device (struct device*,int ,size_t,int) ;
 int dma_cache_maint (int ,size_t,int ) ;
 scalar_t__ pfn_valid (int ) ;

void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
  phys_addr_t paddr, size_t size, enum dma_data_direction dir)
{
 if (pfn_valid(PFN_DOWN(handle)))
  arch_sync_dma_for_device(dev, paddr, size, dir);
 else if (dir == DMA_FROM_DEVICE)
  dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
 else
  dma_cache_maint(handle, size, GNTTAB_CACHE_CLEAN);
}
