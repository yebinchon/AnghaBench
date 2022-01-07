
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_iv {int dummy; } ;


 int IRQIO_MSI ;
 int PCI_ISC ;
 int SIC_IRQ_MODE_D_SINGLE ;
 int airq_iv_end (struct airq_iv*) ;
 int airq_iv_get_data (struct airq_iv*,unsigned long) ;
 unsigned long airq_iv_scan (struct airq_iv*,unsigned long,int ) ;
 int generic_handle_irq (int ) ;
 int inc_irq_stat (int ) ;
 size_t smp_processor_id () ;
 struct airq_iv** zpci_ibv ;
 scalar_t__ zpci_set_irq_ctrl (int ,int ) ;

__attribute__((used)) static void zpci_handle_cpu_local_irq(bool rescan)
{
 struct airq_iv *dibv = zpci_ibv[smp_processor_id()];
 unsigned long bit;
 int irqs_on = 0;

 for (bit = 0;;) {

  bit = airq_iv_scan(dibv, bit, airq_iv_end(dibv));
  if (bit == -1UL) {
   if (!rescan || irqs_on++)

    break;

   if (zpci_set_irq_ctrl(SIC_IRQ_MODE_D_SINGLE, PCI_ISC))
    break;
   bit = 0;
   continue;
  }
  inc_irq_stat(IRQIO_MSI);
  generic_handle_irq(airq_iv_get_data(dibv, bit));
 }
}
