
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct openpic {int vector_mask; int idr_reset; int max_irq; int irq_ipi0; int irq_tim0; int irq_msi; TYPE_2__* src; TYPE_1__* fsl; int ivpr_reset; scalar_t__ tfrr_reset; int vir; int vid; } ;
struct TYPE_4__ {int level; int type; } ;
struct TYPE_3__ {int max_ext; } ;


 int BUG_ON (int) ;
 int IRQ_TYPE_FSLINT ;
 int IRQ_TYPE_FSLSPECIAL ;
 int IVPR_MASK_MASK ;
 scalar_t__ MAX_IPI ;
 int MAX_IRQ ;
 int MAX_SRC ;
 scalar_t__ MAX_TMR ;
 int VID_REVISION_1_2 ;
 int VIR_GENERIC ;
 int add_mmio_region (struct openpic*,int *) ;
 int openpic_msi_mmio ;
 int openpic_summary_mmio ;

__attribute__((used)) static void fsl_common_init(struct openpic *opp)
{
 int i;
 int virq = MAX_SRC;

 add_mmio_region(opp, &openpic_msi_mmio);
 add_mmio_region(opp, &openpic_summary_mmio);

 opp->vid = VID_REVISION_1_2;
 opp->vir = VIR_GENERIC;
 opp->vector_mask = 0xFFFF;
 opp->tfrr_reset = 0;
 opp->ivpr_reset = IVPR_MASK_MASK;
 opp->idr_reset = 1 << 0;
 opp->max_irq = MAX_IRQ;

 opp->irq_ipi0 = virq;
 virq += MAX_IPI;
 opp->irq_tim0 = virq;
 virq += MAX_TMR;

 BUG_ON(virq > MAX_IRQ);

 opp->irq_msi = 224;

 for (i = 0; i < opp->fsl->max_ext; i++)
  opp->src[i].level = 0;


 for (i = 16; i < MAX_SRC; i++) {
  opp->src[i].type = IRQ_TYPE_FSLINT;
  opp->src[i].level = 1;
 }


 for (i = MAX_SRC; i < virq; i++) {
  opp->src[i].type = IRQ_TYPE_FSLSPECIAL;
  opp->src[i].level = 0;
 }
}
