
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int chip_data; } ;


 int irqd_cfg (struct irq_data*) ;
 int uv_program_mmr (int ,int ) ;

__attribute__((used)) static int uv_domain_activate(struct irq_domain *domain,
         struct irq_data *irq_data, bool reserve)
{
 uv_program_mmr(irqd_cfg(irq_data), irq_data->chip_data);
 return 0;
}
