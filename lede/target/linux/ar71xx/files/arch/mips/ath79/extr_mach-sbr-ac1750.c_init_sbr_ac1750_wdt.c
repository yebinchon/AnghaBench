
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOF_OUT_INIT_HIGH ;
 int gpio_request_one (int,int ,char*) ;
 int gpio_set_value (int,int) ;
 int gpio_wdt_timer ;
 int gpio_wdt_toggle (int) ;
 int ndelay (int) ;
 int setup_timer (int *,int (*) (int),int) ;

__attribute__((used)) static void init_sbr_ac1750_wdt(int gpio_wdt){

 if (gpio_wdt >= 0) {
  gpio_request_one(gpio_wdt, GPIOF_OUT_INIT_HIGH, "watchdog");
  gpio_set_value(gpio_wdt, 0);
  ndelay(1000);
  gpio_set_value(gpio_wdt, 1);
  setup_timer(&gpio_wdt_timer, gpio_wdt_toggle, gpio_wdt);
  gpio_wdt_toggle(gpio_wdt);
 }
}
