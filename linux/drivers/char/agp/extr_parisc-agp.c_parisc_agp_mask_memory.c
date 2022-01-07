
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_bridge_data {int dummy; } ;
typedef unsigned long dma_addr_t ;


 unsigned long SBA_PDIR_VALID_BIT ;

__attribute__((used)) static unsigned long
parisc_agp_mask_memory(struct agp_bridge_data *bridge, dma_addr_t addr,
         int type)
{
 return SBA_PDIR_VALID_BIT | addr;
}
