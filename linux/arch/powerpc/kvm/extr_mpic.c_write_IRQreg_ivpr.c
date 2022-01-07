
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct openpic {int vector_mask; TYPE_1__* src; } ;
struct TYPE_2__ {int ivpr; int type; int level; } ;





 int IVPR_ACTIVITY_MASK ;
 int IVPR_MASK_MASK ;
 int IVPR_POLARITY_MASK ;
 int IVPR_PRIORITY_MASK ;
 int IVPR_SENSE_MASK ;
 int openpic_update_irq (struct openpic*,int) ;
 int pr_debug (char*,int,int,int) ;

__attribute__((used)) static inline void write_IRQreg_ivpr(struct openpic *opp, int n_IRQ,
         uint32_t val)
{
 uint32_t mask;




 mask = IVPR_MASK_MASK | IVPR_PRIORITY_MASK | IVPR_SENSE_MASK |
     IVPR_POLARITY_MASK | opp->vector_mask;


 opp->src[n_IRQ].ivpr =
     (opp->src[n_IRQ].ivpr & IVPR_ACTIVITY_MASK) | (val & mask);





 switch (opp->src[n_IRQ].type) {
 case 128:
  opp->src[n_IRQ].level =
      !!(opp->src[n_IRQ].ivpr & IVPR_SENSE_MASK);
  break;

 case 130:
  opp->src[n_IRQ].ivpr &= ~IVPR_SENSE_MASK;
  break;

 case 129:
  opp->src[n_IRQ].ivpr &= ~(IVPR_POLARITY_MASK | IVPR_SENSE_MASK);
  break;
 }

 openpic_update_irq(opp, n_IRQ);
 pr_debug("Set IVPR %d to 0x%08x -> 0x%08x\n", n_IRQ, val,
  opp->src[n_IRQ].ivpr);
}
