
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct resource {int start; int end; int flags; } ;


 scalar_t__ ACPI_ACTIVE_HIGH ;
 scalar_t__ ACPI_ACTIVE_LOW ;
 scalar_t__ ACPI_EDGE_SENSITIVE ;
 scalar_t__ ACPI_LEVEL_SENSITIVE ;
 int acpi_dev_irq_flags (scalar_t__,scalar_t__,scalar_t__) ;
 int acpi_dev_irqresource_disabled (struct resource*,int ) ;
 int acpi_get_override_irq (int ,int*,int*) ;
 int acpi_register_gsi (int *,int ,scalar_t__,scalar_t__) ;
 int pr_warning (char*,int ,char*,char*) ;
 int valid_IRQ (int ) ;

__attribute__((used)) static void acpi_dev_get_irqresource(struct resource *res, u32 gsi,
         u8 triggering, u8 polarity, u8 shareable,
         bool legacy)
{
 int irq, p, t;

 if (!valid_IRQ(gsi)) {
  acpi_dev_irqresource_disabled(res, gsi);
  return;
 }
 if (legacy && !acpi_get_override_irq(gsi, &t, &p)) {
  u8 trig = t ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
  u8 pol = p ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;

  if (triggering != trig || polarity != pol) {
   pr_warning("ACPI: IRQ %d override to %s, %s\n", gsi,
       t ? "level" : "edge", p ? "low" : "high");
   triggering = trig;
   polarity = pol;
  }
 }

 res->flags = acpi_dev_irq_flags(triggering, polarity, shareable);
 irq = acpi_register_gsi(((void*)0), gsi, triggering, polarity);
 if (irq >= 0) {
  res->start = irq;
  res->end = irq;
 } else {
  acpi_dev_irqresource_disabled(res, gsi);
 }
}
