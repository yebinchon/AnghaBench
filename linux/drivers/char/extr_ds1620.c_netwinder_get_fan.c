
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAN_ALWAYS_ON ;
 int FAN_OFF ;
 int FAN_ON ;
 int GPIO_FAN ;
 int nw_gpio_read () ;
 int system_rev ;

__attribute__((used)) static inline int netwinder_get_fan(void)
{
 if ((system_rev & 0xf000) == 0x4000)
  return FAN_ALWAYS_ON;

 return (nw_gpio_read() & GPIO_FAN) ? FAN_ON : FAN_OFF;
}
