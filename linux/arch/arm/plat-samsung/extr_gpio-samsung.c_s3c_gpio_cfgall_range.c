
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int samsung_gpio_pull_t ;


 int s3c_gpio_cfgpin (unsigned int,unsigned int) ;
 int s3c_gpio_setpull (unsigned int,int ) ;

int s3c_gpio_cfgall_range(unsigned int start, unsigned int nr,
     unsigned int cfg, samsung_gpio_pull_t pull)
{
 int ret;

 for (; nr > 0; nr--, start++) {
  s3c_gpio_setpull(start, pull);
  ret = s3c_gpio_cfgpin(start, cfg);
  if (ret != 0)
   return ret;
 }

 return 0;
}
