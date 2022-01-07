
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sata_rcar_priv {scalar_t__ base; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_rcar_priv* private_data; } ;


 int ATAPI_STATUS_ACT ;
 int ATAPI_STATUS_DEVINT ;
 scalar_t__ ATAPI_STATUS_REG ;
 int ATA_DMA_ACTIVE ;
 int ATA_DMA_INTR ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u8 sata_rcar_bmdma_status(struct ata_port *ap)
{
 struct sata_rcar_priv *priv = ap->host->private_data;
 u8 host_stat = 0;
 u32 status;

 status = ioread32(priv->base + ATAPI_STATUS_REG);
 if (status & ATAPI_STATUS_DEVINT)
  host_stat |= ATA_DMA_INTR;
 if (status & ATAPI_STATUS_ACT)
  host_stat |= ATA_DMA_ACTIVE;

 return host_stat;
}
