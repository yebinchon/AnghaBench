
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_alloc_info {int ioapic_node; scalar_t__ ioapic_valid; } ;


 int NUMA_NO_NODE ;

__attribute__((used)) static int ioapic_alloc_attr_node(struct irq_alloc_info *info)
{
 return (info && info->ioapic_valid) ? info->ioapic_node : NUMA_NO_NODE;
}
