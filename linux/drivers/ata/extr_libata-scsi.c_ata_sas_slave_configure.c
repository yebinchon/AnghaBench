
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct ata_port {TYPE_1__ link; } ;


 int ata_scsi_dev_config (struct scsi_device*,int ) ;
 int ata_scsi_sdev_config (struct scsi_device*) ;

int ata_sas_slave_configure(struct scsi_device *sdev, struct ata_port *ap)
{
 ata_scsi_sdev_config(sdev);
 ata_scsi_dev_config(sdev, ap->link.device);
 return 0;
}
