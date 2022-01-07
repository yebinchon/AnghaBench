
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_device {struct device tdev; } ;


 int ata_tdev_free (struct ata_device*) ;
 int device_del (struct device*) ;
 int transport_remove_device (struct device*) ;

__attribute__((used)) static void ata_tdev_delete(struct ata_device *ata_dev)
{
 struct device *dev = &ata_dev->tdev;

 transport_remove_device(dev);
 device_del(dev);
 ata_tdev_free(ata_dev);
}
