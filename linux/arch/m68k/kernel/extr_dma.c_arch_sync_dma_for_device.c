
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;





 int cache_clear (int ,size_t) ;
 int cache_push (int ,size_t) ;
 int pr_err_ratelimited (char*,int) ;

void arch_sync_dma_for_device(struct device *dev, phys_addr_t handle,
  size_t size, enum dma_data_direction dir)
{
 switch (dir) {
 case 130:
 case 128:
  cache_push(handle, size);
  break;
 case 129:
  cache_clear(handle, size);
  break;
 default:
  pr_err_ratelimited("dma_sync_single_for_device: unsupported dir %u\n",
       dir);
  break;
 }
}
