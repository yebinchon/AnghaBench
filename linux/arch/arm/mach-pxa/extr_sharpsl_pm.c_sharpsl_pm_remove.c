
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {int ac_timer; int chrg_full_timer; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int (* exit ) () ;scalar_t__ gpio_acin; scalar_t__ gpio_batfull; scalar_t__ gpio_batlock; scalar_t__ batfull_irq; scalar_t__ gpio_fatal; } ;


 int del_timer_sync (int *) ;
 int dev_attr_battery_percentage ;
 int dev_attr_battery_voltage ;
 int device_remove_file (int *,int *) ;
 int free_irq (int ,int ) ;
 int gpio_free (scalar_t__) ;
 int gpio_to_irq (scalar_t__) ;
 int led_trigger_unregister_simple (int ) ;
 int sharpsl_ac_isr ;
 int sharpsl_charge_led_trigger ;
 int sharpsl_chrg_full_isr ;
 int sharpsl_fatal_isr ;
 TYPE_2__ sharpsl_pm ;
 int stub1 () ;
 int suspend_set_ops (int *) ;

__attribute__((used)) static int sharpsl_pm_remove(struct platform_device *pdev)
{
 suspend_set_ops(((void*)0));

 device_remove_file(&pdev->dev, &dev_attr_battery_percentage);
 device_remove_file(&pdev->dev, &dev_attr_battery_voltage);

 led_trigger_unregister_simple(sharpsl_charge_led_trigger);

 free_irq(gpio_to_irq(sharpsl_pm.machinfo->gpio_acin), sharpsl_ac_isr);
 free_irq(gpio_to_irq(sharpsl_pm.machinfo->gpio_batlock), sharpsl_fatal_isr);

 if (sharpsl_pm.machinfo->gpio_fatal)
  free_irq(gpio_to_irq(sharpsl_pm.machinfo->gpio_fatal), sharpsl_fatal_isr);

 if (sharpsl_pm.machinfo->batfull_irq)
  free_irq(gpio_to_irq(sharpsl_pm.machinfo->gpio_batfull), sharpsl_chrg_full_isr);

 gpio_free(sharpsl_pm.machinfo->gpio_batlock);
 gpio_free(sharpsl_pm.machinfo->gpio_batfull);
 gpio_free(sharpsl_pm.machinfo->gpio_acin);

 if (sharpsl_pm.machinfo->exit)
  sharpsl_pm.machinfo->exit();

 del_timer_sync(&sharpsl_pm.chrg_full_timer);
 del_timer_sync(&sharpsl_pm.ac_timer);

 return 0;
}
