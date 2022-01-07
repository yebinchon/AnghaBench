
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_macio_priv {int dev; int * dma_table_cpu; int dma_table_dma; } ;
struct dbdma_cmd {int dummy; } ;
struct TYPE_2__ {int * bmdma_addr; } ;
struct ata_port {scalar_t__ udma_mask; scalar_t__ mwdma_mask; TYPE_1__ ioaddr; struct pata_macio_priv* private_data; } ;


 int GFP_KERNEL ;
 int MAX_DCMDS ;
 int dev_err (int ,char*) ;
 int * dmam_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int pata_macio_port_start(struct ata_port *ap)
{
 struct pata_macio_priv *priv = ap->private_data;

 if (ap->ioaddr.bmdma_addr == ((void*)0))
  return 0;






 priv->dma_table_cpu =
  dmam_alloc_coherent(priv->dev,
        (MAX_DCMDS + 2) * sizeof(struct dbdma_cmd),
        &priv->dma_table_dma, GFP_KERNEL);
 if (priv->dma_table_cpu == ((void*)0)) {
  dev_err(priv->dev, "Unable to allocate DMA command list\n");
  ap->ioaddr.bmdma_addr = ((void*)0);
  ap->mwdma_mask = 0;
  ap->udma_mask = 0;
 }
 return 0;
}
