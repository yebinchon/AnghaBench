
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmips_dma_range {scalar_t__ size; scalar_t__ child_addr; scalar_t__ parent_addr; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 struct bmips_dma_range* bmips_dma_ranges ;

dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t pa)
{
 struct bmips_dma_range *r;

 for (r = bmips_dma_ranges; r && r->size; r++) {
  if (pa >= r->child_addr &&
      pa < (r->child_addr + r->size))
   return pa - r->child_addr + r->parent_addr;
 }
 return pa;
}
