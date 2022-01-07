
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c_gpio_cfgpin (unsigned int,unsigned int) ;

int s3c_gpio_cfgpin_range(unsigned int start, unsigned int nr,
     unsigned int cfg)
{
 int ret;

 for (; nr > 0; nr--, start++) {
  ret = s3c_gpio_cfgpin(start, cfg);
  if (ret != 0)
   return ret;
 }

 return 0;
}
