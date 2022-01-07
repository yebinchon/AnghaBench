
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_port {int command_list_dma; scalar_t__ command_list; int block1_dma; scalar_t__ block1; } ;
struct driver_data {TYPE_1__* pdev; struct mtip_port* port; } ;
struct TYPE_2__ {int dev; } ;


 int AHCI_CMD_TBL_SZ ;
 int BLOCK_DMA_ALLOC_SZ ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void mtip_dma_free(struct driver_data *dd)
{
 struct mtip_port *port = dd->port;

 if (port->block1)
  dma_free_coherent(&dd->pdev->dev, BLOCK_DMA_ALLOC_SZ,
     port->block1, port->block1_dma);

 if (port->command_list) {
  dma_free_coherent(&dd->pdev->dev, AHCI_CMD_TBL_SZ,
    port->command_list, port->command_list_dma);
 }
}
