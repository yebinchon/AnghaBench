
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;


 char const* devm_kstrdup (struct device*,char const*,int ) ;
 scalar_t__ is_kernel_rodata (unsigned long) ;

const char *devm_kstrdup_const(struct device *dev, const char *s, gfp_t gfp)
{
 if (is_kernel_rodata((unsigned long)s))
  return s;

 return devm_kstrdup(dev, s, gfp);
}
