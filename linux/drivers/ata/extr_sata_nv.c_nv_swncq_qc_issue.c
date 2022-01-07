
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv_swncq_port_priv {int qc_active; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {struct nv_swncq_port_priv* private_data; } ;


 scalar_t__ ATA_PROT_NCQ ;
 int DPRINTK (char*) ;
 unsigned int ata_bmdma_qc_issue (struct ata_queued_cmd*) ;
 int nv_swncq_issue_atacmd (struct ata_port*,struct ata_queued_cmd*) ;
 int nv_swncq_qc_to_dq (struct ata_port*,struct ata_queued_cmd*) ;

__attribute__((used)) static unsigned int nv_swncq_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct nv_swncq_port_priv *pp = ap->private_data;

 if (qc->tf.protocol != ATA_PROT_NCQ)
  return ata_bmdma_qc_issue(qc);

 DPRINTK("Enter\n");

 if (!pp->qc_active)
  nv_swncq_issue_atacmd(ap, qc);
 else
  nv_swncq_qc_to_dq(ap, qc);

 return 0;
}
