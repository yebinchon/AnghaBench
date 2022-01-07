
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int arch_sync_dma_for_cpu (struct device*,int ,size_t,int) ;
 int vdma_log2phys (int ) ;

__attribute__((used)) static void jazz_dma_sync_single_for_cpu(struct device *dev,
  dma_addr_t addr, size_t size, enum dma_data_direction dir)
{
 arch_sync_dma_for_cpu(dev, vdma_log2phys(addr), size, dir);
}
