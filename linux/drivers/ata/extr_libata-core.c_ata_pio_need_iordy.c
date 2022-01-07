
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_device {scalar_t__ pio_mode; int id; TYPE_2__* link; } ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {int pflags; int flags; } ;


 int ATA_FLAG_NO_IORDY ;
 int ATA_PFLAG_RESETTING ;
 scalar_t__ XFER_PIO_2 ;
 scalar_t__ XFER_PIO_5 ;
 scalar_t__ XFER_PIO_6 ;
 scalar_t__ ata_id_has_iordy (int ) ;
 scalar_t__ ata_id_is_cfa (int ) ;

unsigned int ata_pio_need_iordy(const struct ata_device *adev)
{




 if (adev->link->ap->pflags & ATA_PFLAG_RESETTING)
  return 0;



 if (adev->link->ap->flags & ATA_FLAG_NO_IORDY)
  return 0;

 if (ata_id_is_cfa(adev->id)
     && (adev->pio_mode == XFER_PIO_5 || adev->pio_mode == XFER_PIO_6))
  return 0;

 if (adev->pio_mode > XFER_PIO_2)
  return 1;

 if (ata_id_has_iordy(adev->id))
  return 1;
 return 0;
}
