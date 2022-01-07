
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct ata_port {int dummy; } ;
struct ata_device {int dummy; } ;


 struct ata_device* __ata_scsi_find_dev (struct ata_port*,struct scsi_device const*) ;
 int ata_dev_enabled (struct ata_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ata_device *
ata_scsi_find_dev(struct ata_port *ap, const struct scsi_device *scsidev)
{
 struct ata_device *dev = __ata_scsi_find_dev(ap, scsidev);

 if (unlikely(!dev || !ata_dev_enabled(dev)))
  return ((void*)0);

 return dev;
}
