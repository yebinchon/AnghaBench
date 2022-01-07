
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int channel; int id; scalar_t__ lun; } ;
struct ata_port {int dummy; } ;
struct ata_device {int dummy; } ;


 struct ata_device* ata_find_dev (struct ata_port*,int) ;
 int sata_pmp_attached (struct ata_port*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ata_device *__ata_scsi_find_dev(struct ata_port *ap,
           const struct scsi_device *scsidev)
{
 int devno;


 if (!sata_pmp_attached(ap)) {
  if (unlikely(scsidev->channel || scsidev->lun))
   return ((void*)0);
  devno = scsidev->id;
 } else {
  if (unlikely(scsidev->id || scsidev->lun))
   return ((void*)0);
  devno = scsidev->channel;
 }

 return ata_find_dev(ap, devno);
}
