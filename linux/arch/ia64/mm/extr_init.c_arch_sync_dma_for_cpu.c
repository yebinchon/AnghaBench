
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int flags; } ;


 int PG_arch_1 ;
 unsigned long PHYS_PFN (scalar_t__) ;
 TYPE_1__* pfn_to_page (unsigned long) ;
 int set_bit (int ,int *) ;

void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir)
{
 unsigned long pfn = PHYS_PFN(paddr);

 do {
  set_bit(PG_arch_1, &pfn_to_page(pfn)->flags);
 } while (++pfn <= PHYS_PFN(paddr + size - 1));
}
