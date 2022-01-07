
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int mxc_iomux_alloc_pin (unsigned int const,char const*) ;
 int mxc_iomux_release_multiple_pins (unsigned int const*,int) ;

int mxc_iomux_setup_multiple_pins(const unsigned int *pin_list, unsigned count,
  const char *label)
{
 const unsigned int *p = pin_list;
 int i;
 int ret = -EINVAL;

 for (i = 0; i < count; i++) {
  ret = mxc_iomux_alloc_pin(*p, label);
  if (ret)
   goto setup_error;
  p++;
 }
 return 0;

setup_error:
 mxc_iomux_release_multiple_pins(pin_list, i);
 return ret;
}
