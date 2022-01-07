
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int dev; int kobj_wqueue; int kobj_stat; } ;


 scalar_t__ class_pktcdvd ;
 int device_unregister (int ) ;
 int pkt_kobj_remove (int ) ;

__attribute__((used)) static void pkt_sysfs_dev_remove(struct pktcdvd_device *pd)
{
 pkt_kobj_remove(pd->kobj_stat);
 pkt_kobj_remove(pd->kobj_wqueue);
 if (class_pktcdvd)
  device_unregister(pd->dev);
}
