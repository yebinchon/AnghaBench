
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {struct ahci_port_priv* private_data; } ;
struct ata_link {size_t pmp; struct ata_port* ap; } ;
struct ata_device {struct ata_link* link; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_em_priv {int blink_policy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ahci_activity_show(struct ata_device *dev, char *buf)
{
 struct ata_link *link = dev->link;
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_em_priv *emp = &pp->em_priv[link->pmp];




 return sprintf(buf, "%d\n", emp->blink_policy);
}
