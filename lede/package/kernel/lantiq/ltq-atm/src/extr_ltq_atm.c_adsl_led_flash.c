
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ifx_mei_atm_led_blink () ;

__attribute__((used)) static inline void adsl_led_flash(void)
{
 ifx_mei_atm_led_blink();
}
