
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int acpi_irq_context ;
 int acpi_irq_handled ;
 scalar_t__ acpi_irq_handler (int ) ;
 int acpi_irq_not_handled ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static irqreturn_t acpi_irq(int irq, void *dev_id)
{
 u32 handled;

 handled = (*acpi_irq_handler) (acpi_irq_context);

 if (handled) {
  acpi_irq_handled++;
  return IRQ_HANDLED;
 } else {
  acpi_irq_not_handled++;
  return IRQ_NONE;
 }
}
