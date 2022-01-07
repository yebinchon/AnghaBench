
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct irq_data {int hwirq; TYPE_1__* parent_data; struct bridge_irq_chip_data* chip_data; } ;
struct cpumask {int dummy; } ;
struct bridge_irq_chip_data {TYPE_2__* bc; } ;
typedef int nasid_t ;
struct TYPE_7__ {int addr; } ;
struct TYPE_6__ {int intr_addr; } ;
struct TYPE_5__ {int hwirq; } ;


 int COMPACT_TO_NASID_NODEID (int ) ;
 TYPE_4__* b_int_addr ;
 int b_wid_tflush ;
 int bridge_read (TYPE_2__*,int ) ;
 int bridge_write (TYPE_2__*,int ,int) ;
 int cpu_online_mask ;
 int cpu_to_node (int) ;
 int cpumask_first_and (struct cpumask const*,int ) ;
 int irq_chip_set_affinity_parent (struct irq_data*,struct cpumask const*,int) ;

__attribute__((used)) static int bridge_set_affinity(struct irq_data *d, const struct cpumask *mask,
          bool force)
{
 return irq_chip_set_affinity_parent(d, mask, force);

}
