
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {scalar_t__ sdev; } ;


 int GFP_ATOMIC ;
 int SDEV_EVT_MEDIA_CHANGE ;
 int sdev_evt_send_simple (scalar_t__,int ,int ) ;

void ata_scsi_media_change_notify(struct ata_device *dev)
{
 if (dev->sdev)
  sdev_evt_send_simple(dev->sdev, SDEV_EVT_MEDIA_CHANGE,
         GFP_ATOMIC);
}
