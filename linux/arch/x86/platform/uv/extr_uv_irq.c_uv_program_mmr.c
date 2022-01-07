
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uv_irq_2_mmr_pnode {int offset; int pnode; } ;
struct uv_IO_APIC_route_entry {int dest; scalar_t__ mask; scalar_t__ trigger; scalar_t__ polarity; int dest_mode; int delivery_mode; int vector; } ;
struct irq_cfg {int dest_apicid; int vector; } ;
struct TYPE_2__ {int irq_dest_mode; int irq_delivery_mode; } ;


 int BUILD_BUG_ON (int) ;
 TYPE_1__* apic ;
 int uv_write_global_mmr64 (int ,int ,unsigned long) ;

__attribute__((used)) static void uv_program_mmr(struct irq_cfg *cfg, struct uv_irq_2_mmr_pnode *info)
{
 unsigned long mmr_value;
 struct uv_IO_APIC_route_entry *entry;

 BUILD_BUG_ON(sizeof(struct uv_IO_APIC_route_entry) !=
       sizeof(unsigned long));

 mmr_value = 0;
 entry = (struct uv_IO_APIC_route_entry *)&mmr_value;
 entry->vector = cfg->vector;
 entry->delivery_mode = apic->irq_delivery_mode;
 entry->dest_mode = apic->irq_dest_mode;
 entry->polarity = 0;
 entry->trigger = 0;
 entry->mask = 0;
 entry->dest = cfg->dest_apicid;

 uv_write_global_mmr64(info->pnode, info->offset, mmr_value);
}
