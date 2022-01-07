
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xive_irq_data {int * trig_mmio; int * eoi_mmio; } ;


 int iounmap (int *) ;

void xive_cleanup_irq_data(struct xive_irq_data *xd)
{
 if (xd->eoi_mmio) {
  iounmap(xd->eoi_mmio);
  if (xd->eoi_mmio == xd->trig_mmio)
   xd->trig_mmio = ((void*)0);
  xd->eoi_mmio = ((void*)0);
 }
 if (xd->trig_mmio) {
  iounmap(xd->trig_mmio);
  xd->trig_mmio = ((void*)0);
 }
}
