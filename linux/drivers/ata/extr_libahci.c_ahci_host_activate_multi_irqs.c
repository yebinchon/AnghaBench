
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_host_template {int dummy; } ;
struct ata_host {int n_ports; TYPE_1__** ports; int dev; struct ahci_host_priv* private_data; } ;
struct ahci_port_priv {int irq_desc; } ;
struct ahci_host_priv {int (* get_irq_vector ) (struct ata_host*,int) ;} ;
struct TYPE_3__ {struct ahci_port_priv* private_data; } ;


 int ahci_multi_irqs_intr_hard ;
 int ata_host_register (struct ata_host*,struct scsi_host_template*) ;
 int ata_host_start (struct ata_host*) ;
 int ata_port_desc (TYPE_1__*,char*,int) ;
 int devm_request_irq (int ,int,int ,int ,int ,TYPE_1__*) ;
 int disable_irq (int) ;
 int stub1 (struct ata_host*,int) ;

__attribute__((used)) static int ahci_host_activate_multi_irqs(struct ata_host *host,
      struct scsi_host_template *sht)
{
 struct ahci_host_priv *hpriv = host->private_data;
 int i, rc;

 rc = ata_host_start(host);
 if (rc)
  return rc;




 for (i = 0; i < host->n_ports; i++) {
  struct ahci_port_priv *pp = host->ports[i]->private_data;
  int irq = hpriv->get_irq_vector(host, i);


  if (!pp) {
   disable_irq(irq);
   continue;
  }

  rc = devm_request_irq(host->dev, irq, ahci_multi_irqs_intr_hard,
    0, pp->irq_desc, host->ports[i]);

  if (rc)
   return rc;
  ata_port_desc(host->ports[i], "irq %d", irq);
 }

 return ata_host_register(host, sht);
}
