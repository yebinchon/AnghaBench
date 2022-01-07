
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int wake_count; int * wake_buf; struct regmap* map; } ;
struct regmap_irq {size_t reg_offset; int mask; } ;
struct regmap {size_t reg_stride; } ;
struct irq_data {int hwirq; } ;


 struct regmap_irq_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct regmap_irq* irq_to_regmap_irq (struct regmap_irq_chip_data*,int ) ;

__attribute__((used)) static int regmap_irq_set_wake(struct irq_data *data, unsigned int on)
{
 struct regmap_irq_chip_data *d = irq_data_get_irq_chip_data(data);
 struct regmap *map = d->map;
 const struct regmap_irq *irq_data = irq_to_regmap_irq(d, data->hwirq);

 if (on) {
  if (d->wake_buf)
   d->wake_buf[irq_data->reg_offset / map->reg_stride]
    &= ~irq_data->mask;
  d->wake_count++;
 } else {
  if (d->wake_buf)
   d->wake_buf[irq_data->reg_offset / map->reg_stride]
    |= irq_data->mask;
  d->wake_count--;
 }

 return 0;
}
