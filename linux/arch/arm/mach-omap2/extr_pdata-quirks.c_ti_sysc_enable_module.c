
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sysc_cookie {int data; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int omap_hwmod_enable (int ) ;

__attribute__((used)) static int ti_sysc_enable_module(struct device *dev,
     const struct ti_sysc_cookie *cookie)
{
 if (!cookie->data)
  return -EINVAL;

 return omap_hwmod_enable(cookie->data);
}
