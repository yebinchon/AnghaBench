
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct btmrvl_sdio_card {struct btmrvl_plt_wake_cfg* plt_wake_cfg; TYPE_1__* func; } ;
struct btmrvl_plt_wake_cfg {int wake_by_bt; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int IRQ_HANDLED ;
 int dev_info (struct device*,char*) ;
 int disable_irq_nosync (int) ;
 int pm_system_wakeup () ;
 int pm_wakeup_event (struct device*,int ) ;

__attribute__((used)) static irqreturn_t btmrvl_wake_irq_bt(int irq, void *priv)
{
 struct btmrvl_sdio_card *card = priv;
 struct device *dev = &card->func->dev;
 struct btmrvl_plt_wake_cfg *cfg = card->plt_wake_cfg;

 dev_info(dev, "wake by bt\n");
 cfg->wake_by_bt = 1;
 disable_irq_nosync(irq);

 pm_wakeup_event(dev, 0);
 pm_system_wakeup();

 return IRQ_HANDLED;
}
