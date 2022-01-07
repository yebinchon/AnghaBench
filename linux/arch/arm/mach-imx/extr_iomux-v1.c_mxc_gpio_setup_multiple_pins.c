
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int imx_iomuxv1_setup_multiple (int const*,unsigned int) ;

int mxc_gpio_setup_multiple_pins(const int *pin_list, unsigned count,
  const char *label)
{
 int ret;

 ret = imx_iomuxv1_setup_multiple(pin_list, count);
 return ret;
}
