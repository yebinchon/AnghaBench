
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_device {int ering; int class; TYPE_1__* link; } ;
struct TYPE_2__ {int ap; } ;


 int ATA_DNXFER_FORCE_PIO0 ;
 int ATA_DNXFER_QUIET ;
 int ata_acpi_on_disable (struct ata_device*) ;
 int ata_dev_enabled (struct ata_device*) ;
 int ata_dev_warn (struct ata_device*,char*) ;
 int ata_down_xfermask_limit (struct ata_device*,int) ;
 int ata_ering_clear (int *) ;
 scalar_t__ ata_msg_drv (int ) ;

void ata_dev_disable(struct ata_device *dev)
{
 if (!ata_dev_enabled(dev))
  return;

 if (ata_msg_drv(dev->link->ap))
  ata_dev_warn(dev, "disabled\n");
 ata_acpi_on_disable(dev);
 ata_down_xfermask_limit(dev, ATA_DNXFER_FORCE_PIO0 | ATA_DNXFER_QUIET);
 dev->class++;




 ata_ering_clear(&dev->ering);
}
