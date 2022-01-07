
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int wakeup_mask ;

void olpc_xo1_pm_wakeup_set(u16 value)
{
 wakeup_mask |= value;
}
