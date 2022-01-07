
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_device {int flags; int horkage; TYPE_2__* link; } ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {int flags; } ;


 int ATA_DFLAG_CDB_INTR ;
 int ATA_FLAG_PIO_POLLING ;
 int ATA_HORKAGE_NODMA ;

__attribute__((used)) static int ata_dma_blacklisted(const struct ata_device *dev)
{




 if ((dev->link->ap->flags & ATA_FLAG_PIO_POLLING) &&
     (dev->flags & ATA_DFLAG_CDB_INTR))
  return 1;
 return (dev->horkage & ATA_HORKAGE_NODMA) ? 1 : 0;
}
