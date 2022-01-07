
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap_irq_chip_data {int clear_status; int irq_reg_stride; int type_reg_stride; int wake_count; int lock; int irq; TYPE_1__* chip; struct regmap* map; int * type_buf; int * type_buf_def; int * mask_buf; int * wake_buf; int * mask_buf_def; } ;
struct regmap {int reg_stride; int dev; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int num_regs; int status_base; int mask_base; int unmask_base; int wake_base; int ack_base; int num_type_reg; int type_base; scalar_t__ runtime_pm; scalar_t__ type_invert; int type_in_mask; scalar_t__ ack_invert; scalar_t__ use_ack; int init_ack_masked; scalar_t__ wake_invert; scalar_t__ mask_invert; } ;


 int dev_err (int ,char*,...) ;
 struct regmap_irq_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,int) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int regmap_irq_update_bits (struct regmap_irq_chip_data*,int,int ,int ) ;
 int regmap_read (struct regmap*,int,int*) ;
 int regmap_write (struct regmap*,int,int ) ;

__attribute__((used)) static void regmap_irq_sync_unlock(struct irq_data *data)
{
 struct regmap_irq_chip_data *d = irq_data_get_irq_chip_data(data);
 struct regmap *map = d->map;
 int i, ret;
 u32 reg;
 u32 unmask_offset;
 u32 val;

 if (d->chip->runtime_pm) {
  ret = pm_runtime_get_sync(map->dev);
  if (ret < 0)
   dev_err(map->dev, "IRQ sync failed to resume: %d\n",
    ret);
 }

 if (d->clear_status) {
  for (i = 0; i < d->chip->num_regs; i++) {
   reg = d->chip->status_base +
    (i * map->reg_stride * d->irq_reg_stride);

   ret = regmap_read(map, reg, &val);
   if (ret)
    dev_err(d->map->dev,
     "Failed to clear the interrupt status bits\n");
  }

  d->clear_status = 0;
 }






 for (i = 0; i < d->chip->num_regs; i++) {
  if (!d->chip->mask_base)
   continue;

  reg = d->chip->mask_base +
   (i * map->reg_stride * d->irq_reg_stride);
  if (d->chip->mask_invert) {
   ret = regmap_irq_update_bits(d, reg,
      d->mask_buf_def[i], ~d->mask_buf[i]);
  } else if (d->chip->unmask_base) {

   ret = regmap_irq_update_bits(d, reg,
     d->mask_buf_def[i], ~d->mask_buf[i]);
   if (ret < 0)
    dev_err(d->map->dev,
     "Failed to sync unmasks in %x\n",
     reg);
   unmask_offset = d->chip->unmask_base -
       d->chip->mask_base;

   ret = regmap_irq_update_bits(d,
     reg + unmask_offset,
     d->mask_buf_def[i],
     d->mask_buf[i]);
  } else {
   ret = regmap_irq_update_bits(d, reg,
      d->mask_buf_def[i], d->mask_buf[i]);
  }
  if (ret != 0)
   dev_err(d->map->dev, "Failed to sync masks in %x\n",
    reg);

  reg = d->chip->wake_base +
   (i * map->reg_stride * d->irq_reg_stride);
  if (d->wake_buf) {
   if (d->chip->wake_invert)
    ret = regmap_irq_update_bits(d, reg,
        d->mask_buf_def[i],
        ~d->wake_buf[i]);
   else
    ret = regmap_irq_update_bits(d, reg,
        d->mask_buf_def[i],
        d->wake_buf[i]);
   if (ret != 0)
    dev_err(d->map->dev,
     "Failed to sync wakes in %x: %d\n",
     reg, ret);
  }

  if (!d->chip->init_ack_masked)
   continue;





  if (d->mask_buf[i] && (d->chip->ack_base || d->chip->use_ack)) {
   reg = d->chip->ack_base +
    (i * map->reg_stride * d->irq_reg_stride);

   if (d->chip->ack_invert)
    ret = regmap_write(map, reg, ~d->mask_buf[i]);
   else
    ret = regmap_write(map, reg, d->mask_buf[i]);
   if (ret != 0)
    dev_err(d->map->dev, "Failed to ack 0x%x: %d\n",
     reg, ret);
  }
 }


 if (!d->chip->type_in_mask) {
  for (i = 0; i < d->chip->num_type_reg; i++) {
   if (!d->type_buf_def[i])
    continue;
   reg = d->chip->type_base +
    (i * map->reg_stride * d->type_reg_stride);
   if (d->chip->type_invert)
    ret = regmap_irq_update_bits(d, reg,
     d->type_buf_def[i], ~d->type_buf[i]);
   else
    ret = regmap_irq_update_bits(d, reg,
     d->type_buf_def[i], d->type_buf[i]);
   if (ret != 0)
    dev_err(d->map->dev, "Failed to sync type in %x\n",
     reg);
  }
 }

 if (d->chip->runtime_pm)
  pm_runtime_put(map->dev);


 if (d->wake_count < 0)
  for (i = d->wake_count; i < 0; i++)
   irq_set_irq_wake(d->irq, 0);
 else if (d->wake_count > 0)
  for (i = 0; i < d->wake_count; i++)
   irq_set_irq_wake(d->irq, 1);

 d->wake_count = 0;

 mutex_unlock(&d->lock);
}
