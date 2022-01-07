
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpodd {int powered_off; int from_notify; scalar_t__ mech_type; int zp_sampled; int zp_ready; } ;
struct ata_device {int sdev; struct zpodd* zpodd; } ;


 scalar_t__ ODD_MECH_TYPE_DRAWER ;
 int eject_tray (struct ata_device*) ;
 int sdev_enable_disk_events (int ) ;

void zpodd_post_poweron(struct ata_device *dev)
{
 struct zpodd *zpodd = dev->zpodd;

 if (!zpodd->powered_off)
  return;

 zpodd->powered_off = 0;

 if (zpodd->from_notify) {
  zpodd->from_notify = 0;
  if (zpodd->mech_type == ODD_MECH_TYPE_DRAWER)
   eject_tray(dev);
 }

 zpodd->zp_sampled = 0;
 zpodd->zp_ready = 0;

 sdev_enable_disk_events(dev->sdev);
}
