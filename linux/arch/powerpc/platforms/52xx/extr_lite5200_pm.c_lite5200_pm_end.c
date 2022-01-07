
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PM_SUSPEND_ON ;
 int lite5200_pm_target_state ;

__attribute__((used)) static void lite5200_pm_end(void)
{
 lite5200_pm_target_state = PM_SUSPEND_ON;
}
