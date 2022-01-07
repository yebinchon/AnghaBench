
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int octeon_irq_ciu3_mbox_set_enable (struct irq_data*,int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void octeon_irq_ciu3_mbox_cpu_offline(struct irq_data *data)
{
 octeon_irq_ciu3_mbox_set_enable(data, smp_processor_id(), 0);
}
