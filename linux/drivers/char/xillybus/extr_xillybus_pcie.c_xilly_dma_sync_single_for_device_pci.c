
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint {int pdev; } ;
typedef int dma_addr_t ;


 int pci_dma_sync_single_for_device (int ,int ,size_t,int ) ;
 int xilly_pci_direction (int) ;

__attribute__((used)) static void xilly_dma_sync_single_for_device_pci(struct xilly_endpoint *ep,
       dma_addr_t dma_handle,
       size_t size,
       int direction)
{
 pci_dma_sync_single_for_device(ep->pdev,
           dma_handle,
           size,
           xilly_pci_direction(direction));
}
