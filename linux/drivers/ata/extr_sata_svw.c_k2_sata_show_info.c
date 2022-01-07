
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {int dummy; } ;
struct device_node {struct device_node* sibling; struct device_node* child; } ;
struct ata_port {TYPE_1__* host; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct ata_port** ports; int dev; } ;


 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 struct device_node* pci_device_to_OF_node (int ) ;
 int seq_printf (struct seq_file*,char*,struct device_node*) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static int k2_sata_show_info(struct seq_file *m, struct Scsi_Host *shost)
{
 struct ata_port *ap;
 struct device_node *np;
 int index;


 ap = ata_shost_to_port(shost);
 if (ap == ((void*)0))
  return 0;


 np = pci_device_to_OF_node(to_pci_dev(ap->host->dev));
 if (np == ((void*)0))
  return 0;


 index = (ap == ap->host->ports[0]) ? 0 : 1;
 for (np = np->child; np != ((void*)0); np = np->sibling) {
  const u32 *reg = of_get_property(np, "reg", ((void*)0));
  if (!reg)
   continue;
  if (index == *reg) {
   seq_printf(m, "devspec: %pOF\n", np);
   break;
  }
 }
 return 0;
}
