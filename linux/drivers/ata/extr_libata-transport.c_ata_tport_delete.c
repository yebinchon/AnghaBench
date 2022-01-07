
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {int link; struct device tdev; } ;


 int ata_tlink_delete (int *) ;
 int device_del (struct device*) ;
 int put_device (struct device*) ;
 int transport_destroy_device (struct device*) ;
 int transport_remove_device (struct device*) ;

void ata_tport_delete(struct ata_port *ap)
{
 struct device *dev = &ap->tdev;

 ata_tlink_delete(&ap->link);

 transport_remove_device(dev);
 device_del(dev);
 transport_destroy_device(dev);
 put_device(dev);
}
