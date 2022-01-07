
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CF_EXXXN_EXT_WDT_TIMEOUT_MS ;
 int gpio_set_value (unsigned long,int) ;
 int gpio_wdt_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void gpio_wdt_toggle(unsigned long gpio)
{
 static int state;

 state = !state;
 gpio_set_value(gpio, state);

 mod_timer(&gpio_wdt_timer,
    jiffies + msecs_to_jiffies(CF_EXXXN_EXT_WDT_TIMEOUT_MS));
}
