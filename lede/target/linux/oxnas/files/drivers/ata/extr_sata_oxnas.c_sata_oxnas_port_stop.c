
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sata_oxnas_port_priv {int sgdma_request_pa; int sgdma_request; } ;
struct sata_oxnas_host_priv {scalar_t__ dma_size; } ;
struct device {int dummy; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_oxnas_host_priv* private_data; struct device* dev; } ;


 int DPRINTK (char*) ;
 int SATA_OXNAS_DMA_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct sata_oxnas_port_priv*) ;

__attribute__((used)) static void sata_oxnas_port_stop(struct ata_port *ap)
{
 struct device *dev = ap->host->dev;
 struct sata_oxnas_port_priv *pp = ap->private_data;
 struct sata_oxnas_host_priv *host_priv = ap->host->private_data;

 DPRINTK("ENTER\n");
 ap->private_data = ((void*)0);
 if (host_priv->dma_size) {
  iounmap(pp->sgdma_request);
 } else {
  dma_free_coherent(dev, SATA_OXNAS_DMA_SIZE,
      pp->sgdma_request, pp->sgdma_request_pa);
 }

 kfree(pp);
}
