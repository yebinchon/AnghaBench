
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_rngc {int rng_op_done; scalar_t__ base; void* err_reg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ RNGC_ERROR ;
 scalar_t__ RNGC_STATUS ;
 int RNGC_STATUS_SEED_DONE ;
 int RNGC_STATUS_ST_DONE ;
 int complete (int *) ;
 int imx_rngc_irq_mask_clear (struct imx_rngc*) ;
 void* readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t imx_rngc_irq(int irq, void *priv)
{
 struct imx_rngc *rngc = (struct imx_rngc *)priv;
 u32 status;





 status = readl(rngc->base + RNGC_STATUS);
 rngc->err_reg = readl(rngc->base + RNGC_ERROR);

 imx_rngc_irq_mask_clear(rngc);

 if (status & (RNGC_STATUS_SEED_DONE | RNGC_STATUS_ST_DONE))
  complete(&rngc->rng_op_done);

 return IRQ_HANDLED;
}
