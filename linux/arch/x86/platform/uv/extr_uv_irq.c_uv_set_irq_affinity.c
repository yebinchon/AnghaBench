
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int chip_data; TYPE_1__* chip; struct irq_data* parent_data; } ;
struct irq_cfg {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* irq_set_affinity ) (struct irq_data*,struct cpumask const*,int) ;} ;


 struct irq_cfg* irqd_cfg (struct irq_data*) ;
 int send_cleanup_vector (struct irq_cfg*) ;
 int stub1 (struct irq_data*,struct cpumask const*,int) ;
 int uv_program_mmr (struct irq_cfg*,int ) ;

__attribute__((used)) static int
uv_set_irq_affinity(struct irq_data *data, const struct cpumask *mask,
      bool force)
{
 struct irq_data *parent = data->parent_data;
 struct irq_cfg *cfg = irqd_cfg(data);
 int ret;

 ret = parent->chip->irq_set_affinity(parent, mask, force);
 if (ret >= 0) {
  uv_program_mmr(cfg, data->chip_data);
  send_cleanup_vector(cfg);
 }

 return ret;
}
