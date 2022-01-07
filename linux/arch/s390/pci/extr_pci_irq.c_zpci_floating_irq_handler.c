
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_struct {int dummy; } ;
struct airq_iv {int dummy; } ;


 int IRQIO_MSI ;
 int IRQIO_PCF ;
 int PCI_ISC ;
 int SIC_IRQ_MODE_SINGLE ;
 int airq_iv_end (struct airq_iv*) ;
 int airq_iv_get_data (struct airq_iv*,unsigned long) ;
 int airq_iv_lock (struct airq_iv*,unsigned long) ;
 unsigned long airq_iv_scan (struct airq_iv*,unsigned long,int ) ;
 int airq_iv_unlock (struct airq_iv*,unsigned long) ;
 int generic_handle_irq (int ) ;
 int inc_irq_stat (int ) ;
 struct airq_iv** zpci_ibv ;
 struct airq_iv* zpci_sbv ;
 scalar_t__ zpci_set_irq_ctrl (int ,int ) ;

__attribute__((used)) static void zpci_floating_irq_handler(struct airq_struct *airq, bool floating)
{
 unsigned long si, ai;
 struct airq_iv *aibv;
 int irqs_on = 0;

 inc_irq_stat(IRQIO_PCF);
 for (si = 0;;) {

  si = airq_iv_scan(zpci_sbv, si, airq_iv_end(zpci_sbv));
  if (si == -1UL) {
   if (irqs_on++)

    break;

   if (zpci_set_irq_ctrl(SIC_IRQ_MODE_SINGLE, PCI_ISC))
    break;
   si = 0;
   continue;
  }


  aibv = zpci_ibv[si];
  for (ai = 0;;) {
   ai = airq_iv_scan(aibv, ai, airq_iv_end(aibv));
   if (ai == -1UL)
    break;
   inc_irq_stat(IRQIO_MSI);
   airq_iv_lock(aibv, ai);
   generic_handle_irq(airq_iv_get_data(aibv, ai));
   airq_iv_unlock(aibv, ai);
  }
 }
}
