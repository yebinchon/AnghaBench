
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {struct ahci_port_priv* private_data; } ;
struct ahci_port_priv {scalar_t__ fbs_enabled; } ;


 int ata_std_qc_defer (struct ata_queued_cmd*) ;
 int sata_pmp_attached (struct ata_port*) ;
 int sata_pmp_qc_defer_cmd_switch (struct ata_queued_cmd*) ;

__attribute__((used)) static int ahci_pmp_qc_defer(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ahci_port_priv *pp = ap->private_data;

 if (!sata_pmp_attached(ap) || pp->fbs_enabled)
  return ata_std_qc_defer(qc);
 else
  return sata_pmp_qc_defer_cmd_switch(qc);
}
