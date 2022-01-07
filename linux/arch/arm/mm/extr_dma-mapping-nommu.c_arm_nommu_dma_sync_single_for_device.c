
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int __dma_page_cpu_to_dev (int ,size_t,int) ;

__attribute__((used)) static void arm_nommu_dma_sync_single_for_device(struct device *dev,
  dma_addr_t handle, size_t size, enum dma_data_direction dir)
{
 __dma_page_cpu_to_dev(handle, size, dir);
}
