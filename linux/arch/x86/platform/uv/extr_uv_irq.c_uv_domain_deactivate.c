
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv_IO_APIC_route_entry {int mask; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int chip_data; } ;


 int irqd_cfg (struct irq_data*) ;
 int uv_program_mmr (int ,int ) ;

__attribute__((used)) static void uv_domain_deactivate(struct irq_domain *domain,
     struct irq_data *irq_data)
{
 unsigned long mmr_value;
 struct uv_IO_APIC_route_entry *entry;

 mmr_value = 0;
 entry = (struct uv_IO_APIC_route_entry *)&mmr_value;
 entry->mask = 1;
 uv_program_mmr(irqd_cfg(irq_data), irq_data->chip_data);
}
