
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ep93xx_pata_data {scalar_t__ ide_base; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_DMA_ACTIVE ;
 int ATA_DMA_ERR ;
 int ATA_DMA_INTR ;
 scalar_t__ IDECTRL ;
 int IDECTRL_INTRQ ;
 scalar_t__ IDEUDMASTS ;
 int IDEUDMASTS_DMAIDE ;
 int IDEUDMASTS_INTIDE ;
 int IDEUDMASTS_N4X ;
 int IDEUDMASTS_NDI ;
 int IDEUDMASTS_NDO ;
 int IDEUDMASTS_SBUSY ;
 int readl (scalar_t__) ;

__attribute__((used)) static u8 ep93xx_pata_dma_status(struct ata_port *ap)
{
 struct ep93xx_pata_data *drv_data = ap->host->private_data;
 u32 val = readl(drv_data->ide_base + IDEUDMASTS);
 if (val & IDEUDMASTS_NDO || val & IDEUDMASTS_NDI ||
     val & IDEUDMASTS_N4X || val & IDEUDMASTS_INTIDE)
  return ATA_DMA_ERR;


 if (readl(drv_data->ide_base + IDECTRL) & IDECTRL_INTRQ)
  return ATA_DMA_INTR;

 if (val & IDEUDMASTS_SBUSY || val & IDEUDMASTS_DMAIDE)
  return ATA_DMA_ACTIVE;

 return 0;
}
