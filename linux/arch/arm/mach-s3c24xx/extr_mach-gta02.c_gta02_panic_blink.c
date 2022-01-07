
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GTA02_GPIO_AUX_LED ;
 int gpio_direction_output (int ,char) ;

__attribute__((used)) static long gta02_panic_blink(int state)
{
 long delay = 0;
 char led;

 led = (state) ? 1 : 0;
 gpio_direction_output(GTA02_GPIO_AUX_LED, led);

 return delay;
}
