
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ps3_dma_region {int dummy; } ;
typedef int dma_addr_t ;


 unsigned long __pa (unsigned long) ;
 int dma_sb_lpar_to_bus (struct ps3_dma_region*,int ) ;
 scalar_t__ is_kernel_addr (unsigned long) ;
 int ps3_mm_phys_to_lpar (unsigned long) ;

__attribute__((used)) static int dma_sb_map_area_linear(struct ps3_dma_region *r,
 unsigned long virt_addr, unsigned long len, dma_addr_t *bus_addr,
 u64 iopte_flag)
{
 unsigned long phys_addr = is_kernel_addr(virt_addr) ? __pa(virt_addr)
  : virt_addr;
 *bus_addr = dma_sb_lpar_to_bus(r, ps3_mm_phys_to_lpar(phys_addr));
 return 0;
}
