
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int iop32x_gpio_res ;
 int platform_device_register_simple (char*,int ,int ,int ) ;

__attribute__((used)) static inline void register_iop32x_gpio(void)
{
 platform_device_register_simple("gpio-iop", 0,
     iop32x_gpio_res,
     ARRAY_SIZE(iop32x_gpio_res));
}
