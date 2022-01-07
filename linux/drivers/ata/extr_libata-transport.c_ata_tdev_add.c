
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int release; int * parent; } ;
struct ata_port {int print_id; } ;
struct ata_link {int pmp; int tdev; struct ata_port* ap; } ;
struct ata_device {int devno; struct ata_link* link; struct device tdev; } ;


 int ata_acpi_bind_dev (struct ata_device*) ;
 scalar_t__ ata_is_host_link (struct ata_link*) ;
 int ata_tdev_free (struct ata_device*) ;
 int ata_tdev_release ;
 int dev_set_name (struct device*,char*,int ,int ) ;
 int device_add (struct device*) ;
 int device_initialize (struct device*) ;
 int transport_add_device (struct device*) ;
 int transport_configure_device (struct device*) ;
 int transport_setup_device (struct device*) ;

__attribute__((used)) static int ata_tdev_add(struct ata_device *ata_dev)
{
 struct device *dev = &ata_dev->tdev;
 struct ata_link *link = ata_dev->link;
 struct ata_port *ap = link->ap;
 int error;

 device_initialize(dev);
 dev->parent = &link->tdev;
 dev->release = ata_tdev_release;
 if (ata_is_host_link(link))
  dev_set_name(dev, "dev%d.%d", ap->print_id,ata_dev->devno);
        else
  dev_set_name(dev, "dev%d.%d.0", ap->print_id, link->pmp);

 transport_setup_device(dev);
 ata_acpi_bind_dev(ata_dev);
 error = device_add(dev);
 if (error) {
  ata_tdev_free(ata_dev);
  return error;
 }

 transport_add_device(dev);
 transport_configure_device(dev);
 return 0;
}
