
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct openpic {int frr; int nb_irqs; int vid; int spve; int vector_mask; int max_irq; int ivpr_reset; scalar_t__ gcr; TYPE_3__* timers; TYPE_2__* dst; int idr_reset; TYPE_1__* src; int tfrr_reset; int tfrr; scalar_t__ pir; } ;
struct irq_queue {int dummy; } ;
struct TYPE_8__ {int next; } ;
struct TYPE_7__ {int tbcr; scalar_t__ tccr; } ;
struct TYPE_6__ {int ctpr; TYPE_4__ servicing; TYPE_4__ raised; } ;
struct TYPE_5__ {int ivpr; int type; int level; } ;


 int FRR_NIRQ_SHIFT ;
 int FRR_VID_SHIFT ;
 scalar_t__ GCR_RESET ;



 int IVPR_POLARITY_MASK ;
 int IVPR_SENSE_MASK ;
 int MAX_CPU ;
 int MAX_TMR ;
 int TBCR_CI ;
 int memset (TYPE_4__*,int ,int) ;
 int write_IRQreg_idr (struct openpic*,int,int ) ;

__attribute__((used)) static void openpic_reset(struct openpic *opp)
{
 int i;

 opp->gcr = GCR_RESET;

 opp->frr = ((opp->nb_irqs - 1) << FRR_NIRQ_SHIFT) |
     (opp->vid << FRR_VID_SHIFT);

 opp->pir = 0;
 opp->spve = -1 & opp->vector_mask;
 opp->tfrr = opp->tfrr_reset;

 for (i = 0; i < opp->max_irq; i++) {
  opp->src[i].ivpr = opp->ivpr_reset;

  switch (opp->src[i].type) {
  case 128:
   opp->src[i].level =
       !!(opp->ivpr_reset & IVPR_SENSE_MASK);
   break;

  case 130:
   opp->src[i].ivpr |= IVPR_POLARITY_MASK;
   break;

  case 129:
   break;
  }

  write_IRQreg_idr(opp, i, opp->idr_reset);
 }

 for (i = 0; i < MAX_CPU; i++) {
  opp->dst[i].ctpr = 15;
  memset(&opp->dst[i].raised, 0, sizeof(struct irq_queue));
  opp->dst[i].raised.next = -1;
  memset(&opp->dst[i].servicing, 0, sizeof(struct irq_queue));
  opp->dst[i].servicing.next = -1;
 }

 for (i = 0; i < MAX_TMR; i++) {
  opp->timers[i].tccr = 0;
  opp->timers[i].tbcr = TBCR_CI;
 }

 opp->gcr = 0;
}
