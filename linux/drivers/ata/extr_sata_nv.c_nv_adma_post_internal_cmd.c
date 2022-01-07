
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv_adma_port_priv {int flags; } ;
struct ata_queued_cmd {TYPE_1__* ap; } ;
struct TYPE_2__ {struct nv_adma_port_priv* private_data; } ;


 int NV_ADMA_PORT_REGISTER_MODE ;
 int ata_bmdma_post_internal_cmd (struct ata_queued_cmd*) ;

__attribute__((used)) static void nv_adma_post_internal_cmd(struct ata_queued_cmd *qc)
{
 struct nv_adma_port_priv *pp = qc->ap->private_data;

 if (pp->flags & NV_ADMA_PORT_REGISTER_MODE)
  ata_bmdma_post_internal_cmd(qc);
}
