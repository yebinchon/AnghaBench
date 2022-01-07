
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_struct {int dummy; } ;


 int IRQIO_PCD ;
 int IRQIO_PCF ;
 int inc_irq_stat (int ) ;
 int zpci_handle_cpu_local_irq (int) ;
 int zpci_handle_fallback_irq () ;

__attribute__((used)) static void zpci_directed_irq_handler(struct airq_struct *airq, bool floating)
{
 if (floating) {
  inc_irq_stat(IRQIO_PCF);
  zpci_handle_fallback_irq();
 } else {
  inc_irq_stat(IRQIO_PCD);
  zpci_handle_cpu_local_irq(1);
 }
}
