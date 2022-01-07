
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {struct ata_port* ap; } ;
struct ata_port {struct ata_link* slave_link; struct ata_link link; } ;
struct ata_device {int devno; struct ata_link* link; } ;



struct ata_link *ata_dev_phys_link(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;

 if (!ap->slave_link)
  return dev->link;
 if (!dev->devno)
  return &ap->link;
 return ap->slave_link;
}
