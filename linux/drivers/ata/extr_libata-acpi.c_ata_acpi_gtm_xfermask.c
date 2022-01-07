
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_device {int devno; } ;
struct ata_acpi_gtm {int flags; TYPE_1__* drive; } ;
struct TYPE_2__ {int dma; int pio; } ;


 unsigned int ATA_SHIFT_MWDMA ;
 unsigned int ATA_SHIFT_PIO ;
 unsigned int ATA_SHIFT_UDMA ;
 int ata_timing_cycle2mode (unsigned int,int ) ;
 unsigned long ata_xfer_mode2mask (int ) ;

unsigned long ata_acpi_gtm_xfermask(struct ata_device *dev,
        const struct ata_acpi_gtm *gtm)
{
 unsigned long xfer_mask = 0;
 unsigned int type;
 int unit;
 u8 mode;


 unit = dev->devno;
 if (!(gtm->flags & 0x10))
  unit = 0;


 mode = ata_timing_cycle2mode(ATA_SHIFT_PIO, gtm->drive[unit].pio);
 xfer_mask |= ata_xfer_mode2mask(mode);





 if (!(gtm->flags & (1 << (2 * unit))))
  type = ATA_SHIFT_MWDMA;
 else
  type = ATA_SHIFT_UDMA;

 mode = ata_timing_cycle2mode(type, gtm->drive[unit].dma);
 xfer_mask |= ata_xfer_mode2mask(mode);

 return xfer_mask;
}
