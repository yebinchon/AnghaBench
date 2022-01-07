
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int _flags; } ;


 int _CLKDM_FLAG_HWSUP_ENABLED ;

bool clkdm_in_hwsup(struct clockdomain *clkdm)
{
 bool ret;

 if (!clkdm)
  return 0;

 ret = (clkdm->_flags & _CLKDM_FLAG_HWSUP_ENABLED) ? 1 : 0;

 return ret;
}
