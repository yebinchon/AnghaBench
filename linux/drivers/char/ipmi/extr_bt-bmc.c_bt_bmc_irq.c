
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bt_bmc {int queue; scalar_t__ offset; int map; } ;
typedef int irqreturn_t ;


 scalar_t__ BT_CR2 ;
 int BT_CR2_IRQ_H2B ;
 int BT_CR2_IRQ_HBUSY ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_write (int ,scalar_t__,int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t bt_bmc_irq(int irq, void *arg)
{
 struct bt_bmc *bt_bmc = arg;
 u32 reg;
 int rc;

 rc = regmap_read(bt_bmc->map, bt_bmc->offset + BT_CR2, &reg);
 if (rc)
  return IRQ_NONE;

 reg &= BT_CR2_IRQ_H2B | BT_CR2_IRQ_HBUSY;
 if (!reg)
  return IRQ_NONE;


 regmap_write(bt_bmc->map, bt_bmc->offset + BT_CR2, reg);

 wake_up(&bt_bmc->queue);
 return IRQ_HANDLED;
}
