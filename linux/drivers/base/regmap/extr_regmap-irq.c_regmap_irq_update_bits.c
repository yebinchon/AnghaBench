
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap_irq_chip_data {int map; TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ mask_writeonly; } ;


 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;
 int regmap_write_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int regmap_irq_update_bits(struct regmap_irq_chip_data *d,
      unsigned int reg, unsigned int mask,
      unsigned int val)
{
 if (d->chip->mask_writeonly)
  return regmap_write_bits(d->map, reg, mask, val);
 else
  return regmap_update_bits(d->map, reg, mask, val);
}
