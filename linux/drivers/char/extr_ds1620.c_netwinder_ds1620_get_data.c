
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_DATA ;
 int nw_gpio_read () ;

__attribute__((used)) static inline int netwinder_ds1620_get_data(void)
{
 return nw_gpio_read() & GPIO_DATA;
}
