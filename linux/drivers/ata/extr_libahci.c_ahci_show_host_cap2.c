
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ahci_host_priv {int cap2; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ahci_show_host_cap2(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ata_port *ap = ata_shost_to_port(shost);
 struct ahci_host_priv *hpriv = ap->host->private_data;

 return sprintf(buf, "%x\n", hpriv->cap2);
}
