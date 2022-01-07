
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iommu_table {long it_offset; scalar_t__ it_base; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int IOBMAP_L2E_V ;
 long IOBMAP_PAGE_SHIFT ;
 scalar_t__ IOBMAP_PAGE_SIZE ;
 scalar_t__ IOB_AT_INVAL_TLB_REG ;
 long __pa (unsigned long) ;
 scalar_t__ iob ;
 int out_le32 (scalar_t__,unsigned long) ;
 int pr_debug (char*,long,long,unsigned long) ;

__attribute__((used)) static int iobmap_build(struct iommu_table *tbl, long index,
    long npages, unsigned long uaddr,
    enum dma_data_direction direction,
    unsigned long attrs)
{
 u32 *ip;
 u32 rpn;
 unsigned long bus_addr;

 pr_debug("iobmap: build at: %lx, %lx, addr: %lx\n", index, npages, uaddr);

 bus_addr = (tbl->it_offset + index) << IOBMAP_PAGE_SHIFT;

 ip = ((u32 *)tbl->it_base) + index;

 while (npages--) {
  rpn = __pa(uaddr) >> IOBMAP_PAGE_SHIFT;

  *(ip++) = IOBMAP_L2E_V | rpn;

  out_le32(iob+IOB_AT_INVAL_TLB_REG, bus_addr >> 14);

  uaddr += IOBMAP_PAGE_SIZE;
  bus_addr += IOBMAP_PAGE_SIZE;
 }
 return 0;
}
