
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ps3_dma_region {TYPE_1__* region_ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* map ) (struct ps3_dma_region*,unsigned long,unsigned long,int *,int ) ;} ;


 int stub1 (struct ps3_dma_region*,unsigned long,unsigned long,int *,int ) ;

int ps3_dma_map(struct ps3_dma_region *r, unsigned long virt_addr,
 unsigned long len, dma_addr_t *bus_addr,
 u64 iopte_flag)
{
 return r->region_ops->map(r, virt_addr, len, bus_addr, iopte_flag);
}
