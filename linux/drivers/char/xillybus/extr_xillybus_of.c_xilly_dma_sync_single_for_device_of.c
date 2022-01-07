
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint {int dev; } ;
typedef int dma_addr_t ;


 int dma_sync_single_for_device (int ,int ,size_t,int) ;

__attribute__((used)) static void xilly_dma_sync_single_for_device_of(struct xilly_endpoint *ep,
      dma_addr_t dma_handle,
      size_t size,
      int direction)
{
 dma_sync_single_for_device(ep->dev, dma_handle, size, direction);
}
