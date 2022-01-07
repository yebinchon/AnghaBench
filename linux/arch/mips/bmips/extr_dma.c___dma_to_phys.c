
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmips_dma_range {scalar_t__ size; scalar_t__ parent_addr; scalar_t__ child_addr; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 struct bmips_dma_range* bmips_dma_ranges ;

phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dma_addr)
{
 struct bmips_dma_range *r;

 for (r = bmips_dma_ranges; r && r->size; r++) {
  if (dma_addr >= r->parent_addr &&
      dma_addr < (r->parent_addr + r->size))
   return dma_addr - r->parent_addr + r->child_addr;
 }
 return dma_addr;
}
