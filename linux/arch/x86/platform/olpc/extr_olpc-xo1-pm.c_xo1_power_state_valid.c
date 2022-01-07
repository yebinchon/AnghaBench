
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 scalar_t__ PM_SUSPEND_MEM ;

__attribute__((used)) static int xo1_power_state_valid(suspend_state_t pm_state)
{

 return pm_state == PM_SUSPEND_MEM;
}
