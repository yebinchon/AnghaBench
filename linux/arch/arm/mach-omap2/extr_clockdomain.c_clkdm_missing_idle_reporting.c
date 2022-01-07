
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int flags; } ;


 int CLKDM_MISSING_IDLE_REPORTING ;

bool clkdm_missing_idle_reporting(struct clockdomain *clkdm)
{
 if (!clkdm)
  return 0;

 return (clkdm->flags & CLKDM_MISSING_IDLE_REPORTING) ? 1 : 0;
}
