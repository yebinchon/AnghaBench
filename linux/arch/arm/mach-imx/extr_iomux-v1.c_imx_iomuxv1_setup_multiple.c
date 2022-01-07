
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mxc_gpio_mode (int const) ;

__attribute__((used)) static int imx_iomuxv1_setup_multiple(const int *list, unsigned count)
{
 size_t i;
 int ret = 0;

 for (i = 0; i < count; ++i) {
  ret = mxc_gpio_mode(list[i]);

  if (ret)
   return ret;
 }

 return ret;
}
