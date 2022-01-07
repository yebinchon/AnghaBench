
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int NAS100D_LED_PWR_GPIO ;
 int NAS100D_PB_GPIO ;
 scalar_t__ PBUTTON_HOLDDOWN_COUNT ;
 int ctrl_alt_del () ;
 scalar_t__ gpio_get_value (int ) ;
 int gpio_set_value (int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int nas100d_power_timer ;
 scalar_t__ power_button_countdown ;

__attribute__((used)) static void nas100d_power_handler(struct timer_list *unused)
{




 if (gpio_get_value(NAS100D_PB_GPIO)) {


  if (power_button_countdown > 0)
   power_button_countdown--;

 } else {


  if (power_button_countdown == 0) {




   ctrl_alt_del();


   gpio_set_value(NAS100D_LED_PWR_GPIO, 0);
  } else {
   power_button_countdown = PBUTTON_HOLDDOWN_COUNT;
  }
 }

 mod_timer(&nas100d_power_timer, jiffies + msecs_to_jiffies(500));
}
