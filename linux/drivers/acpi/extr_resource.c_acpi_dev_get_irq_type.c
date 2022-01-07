
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_EDGE_SENSITIVE ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_NONE ;

unsigned int acpi_dev_get_irq_type(int triggering, int polarity)
{
 switch (polarity) {
 case 128:
  return triggering == ACPI_EDGE_SENSITIVE ?
         IRQ_TYPE_EDGE_FALLING :
         IRQ_TYPE_LEVEL_LOW;
 case 129:
  return triggering == ACPI_EDGE_SENSITIVE ?
         IRQ_TYPE_EDGE_RISING :
         IRQ_TYPE_LEVEL_HIGH;
 case 130:
  if (triggering == ACPI_EDGE_SENSITIVE)
   return IRQ_TYPE_EDGE_BOTH;

 default:
  return IRQ_TYPE_NONE;
 }
}
