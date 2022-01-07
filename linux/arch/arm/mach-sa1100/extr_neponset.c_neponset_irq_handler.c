
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct neponset_drvdata {scalar_t__ irq_base; scalar_t__ base; } ;
struct TYPE_7__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_6__ {int (* irq_unmask ) (TYPE_2__*) ;int (* irq_ack ) (TYPE_2__*) ;int (* irq_mask ) (TYPE_2__*) ;} ;


 scalar_t__ IRR ;
 unsigned int IRR_ETHERNET ;
 unsigned int IRR_SA1111 ;
 unsigned int IRR_USAR ;
 scalar_t__ NEP_IRQ_SA1111 ;
 scalar_t__ NEP_IRQ_SMC91X ;
 scalar_t__ NEP_IRQ_USAR ;
 int generic_handle_irq (scalar_t__) ;
 struct neponset_drvdata* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int readb_relaxed (scalar_t__) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;

__attribute__((used)) static void neponset_irq_handler(struct irq_desc *desc)
{
 struct neponset_drvdata *d = irq_desc_get_handler_data(desc);
 unsigned int irr;

 while (1) {



  desc->irq_data.chip->irq_ack(&desc->irq_data);






  irr = readb_relaxed(d->base + IRR);
  irr ^= IRR_ETHERNET | IRR_USAR;

  if ((irr & (IRR_ETHERNET | IRR_USAR | IRR_SA1111)) == 0)
   break;






  if (irr & (IRR_ETHERNET | IRR_USAR)) {
   desc->irq_data.chip->irq_mask(&desc->irq_data);







   desc->irq_data.chip->irq_ack(&desc->irq_data);

   if (irr & IRR_ETHERNET)
    generic_handle_irq(d->irq_base + NEP_IRQ_SMC91X);

   if (irr & IRR_USAR)
    generic_handle_irq(d->irq_base + NEP_IRQ_USAR);

   desc->irq_data.chip->irq_unmask(&desc->irq_data);
  }

  if (irr & IRR_SA1111)
   generic_handle_irq(d->irq_base + NEP_IRQ_SA1111);
 }
}
