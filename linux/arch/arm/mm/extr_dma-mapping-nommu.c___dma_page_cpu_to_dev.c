
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int __va (scalar_t__) ;
 int dmac_map_area (int ,size_t,int) ;
 int outer_clean_range (scalar_t__,scalar_t__) ;
 int outer_inv_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static void __dma_page_cpu_to_dev(phys_addr_t paddr, size_t size,
      enum dma_data_direction dir)
{
 dmac_map_area(__va(paddr), size, dir);

 if (dir == DMA_FROM_DEVICE)
  outer_inv_range(paddr, paddr + size);
 else
  outer_clean_range(paddr, paddr + size);
}
