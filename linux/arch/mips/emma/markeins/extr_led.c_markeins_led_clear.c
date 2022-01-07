
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LED_BASE ;
 int clear ;
 int emma2rh_out32 (scalar_t__,int ) ;

void markeins_led_clear(void)
{
 emma2rh_out32(LED_BASE, clear);
 emma2rh_out32(LED_BASE + 4, clear);
}
