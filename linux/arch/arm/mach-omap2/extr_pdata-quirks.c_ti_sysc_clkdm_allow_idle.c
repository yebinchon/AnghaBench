
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sysc_cookie {scalar_t__ clkdm; } ;
struct device {int dummy; } ;


 int clkdm_allow_idle (scalar_t__) ;

__attribute__((used)) static void ti_sysc_clkdm_allow_idle(struct device *dev,
         const struct ti_sysc_cookie *cookie)
{
 if (cookie->clkdm)
  clkdm_allow_idle(cookie->clkdm);
}
