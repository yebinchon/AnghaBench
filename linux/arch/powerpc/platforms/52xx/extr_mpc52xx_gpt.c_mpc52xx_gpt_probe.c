
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mpc52xx_gpt_priv {TYPE_1__* dev; int wdt_mode; int list; int regs; int ipb_freq; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MPC52xx_GPT_CAN_WDT ;
 int MPC52xx_GPT_IS_WDT ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct mpc52xx_gpt_priv*) ;
 struct mpc52xx_gpt_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int list_add (int *,int *) ;
 int mpc52xx_gpt_gpio_setup (struct mpc52xx_gpt_priv*,int ) ;
 int mpc52xx_gpt_irq_setup (struct mpc52xx_gpt_priv*,int ) ;
 int mpc52xx_gpt_list ;
 int mpc52xx_gpt_list_mutex ;
 int mpc52xx_gpt_wdt_setup (struct mpc52xx_gpt_priv*,int const*) ;
 int mpc5xxx_get_bus_frequency (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * of_get_property (int ,char*,int *) ;
 int of_iomap (int ,int ) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int mpc52xx_gpt_probe(struct platform_device *ofdev)
{
 struct mpc52xx_gpt_priv *gpt;

 gpt = devm_kzalloc(&ofdev->dev, sizeof *gpt, GFP_KERNEL);
 if (!gpt)
  return -ENOMEM;

 raw_spin_lock_init(&gpt->lock);
 gpt->dev = &ofdev->dev;
 gpt->ipb_freq = mpc5xxx_get_bus_frequency(ofdev->dev.of_node);
 gpt->regs = of_iomap(ofdev->dev.of_node, 0);
 if (!gpt->regs)
  return -ENOMEM;

 dev_set_drvdata(&ofdev->dev, gpt);

 mpc52xx_gpt_gpio_setup(gpt, ofdev->dev.of_node);
 mpc52xx_gpt_irq_setup(gpt, ofdev->dev.of_node);

 mutex_lock(&mpc52xx_gpt_list_mutex);
 list_add(&gpt->list, &mpc52xx_gpt_list);
 mutex_unlock(&mpc52xx_gpt_list_mutex);


 if (of_get_property(ofdev->dev.of_node, "fsl,has-wdt", ((void*)0)) ||
     of_get_property(ofdev->dev.of_node, "has-wdt", ((void*)0))) {
  const u32 *on_boot_wdt;

  gpt->wdt_mode = MPC52xx_GPT_CAN_WDT;
  on_boot_wdt = of_get_property(ofdev->dev.of_node,
           "fsl,wdt-on-boot", ((void*)0));
  if (on_boot_wdt) {
   dev_info(gpt->dev, "used as watchdog\n");
   gpt->wdt_mode |= MPC52xx_GPT_IS_WDT;
  } else
   dev_info(gpt->dev, "can function as watchdog\n");
  mpc52xx_gpt_wdt_setup(gpt, on_boot_wdt);
 }

 return 0;
}
