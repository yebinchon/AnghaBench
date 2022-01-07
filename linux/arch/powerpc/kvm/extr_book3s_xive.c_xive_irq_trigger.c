
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xive_irq_data {int flags; int trig_mmio; } ;


 scalar_t__ WARN_ON (int) ;
 int XIVE_IRQ_FLAG_LSI ;
 int out_be64 (int ,int ) ;

__attribute__((used)) static bool xive_irq_trigger(struct xive_irq_data *xd)
{

 if (WARN_ON(xd->flags & XIVE_IRQ_FLAG_LSI))
  return 0;


 if (WARN_ON(!xd->trig_mmio))
  return 0;

 out_be64(xd->trig_mmio, 0);

 return 1;
}
