
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rng_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xgene_rng_chk_overflow (struct xgene_rng_dev*) ;

__attribute__((used)) static irqreturn_t xgene_rng_irq_handler(int irq, void *id)
{
 struct xgene_rng_dev *ctx = (struct xgene_rng_dev *) id;


 xgene_rng_chk_overflow(ctx);

 return IRQ_HANDLED;
}
