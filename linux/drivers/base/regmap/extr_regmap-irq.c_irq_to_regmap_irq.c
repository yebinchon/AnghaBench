
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap_irq_chip_data {TYPE_1__* chip; } ;
struct regmap_irq {int dummy; } ;
struct TYPE_2__ {struct regmap_irq const* irqs; } ;



__attribute__((used)) static inline const
struct regmap_irq *irq_to_regmap_irq(struct regmap_irq_chip_data *data,
         int irq)
{
 return &data->chip->irqs[irq];
}
