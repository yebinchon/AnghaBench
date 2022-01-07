
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exists; int chip; } ;
struct moxtet {TYPE_1__ irq; int dev; } ;
struct irq_domain {struct moxtet* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;


 int BIT (scalar_t__) ;
 int EINVAL ;
 scalar_t__ MOXTET_NIRQS ;
 int dev_err (int ,char*) ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct moxtet*) ;

__attribute__((used)) static int moxtet_irq_domain_map(struct irq_domain *d, unsigned int irq,
     irq_hw_number_t hw)
{
 struct moxtet *moxtet = d->host_data;

 if (hw >= MOXTET_NIRQS || !(moxtet->irq.exists & BIT(hw))) {
  dev_err(moxtet->dev, "Invalid hw irq number\n");
  return -EINVAL;
 }

 irq_set_chip_data(irq, d->host_data);
 irq_set_chip_and_handler(irq, &moxtet->irq.chip, handle_level_irq);

 return 0;
}
