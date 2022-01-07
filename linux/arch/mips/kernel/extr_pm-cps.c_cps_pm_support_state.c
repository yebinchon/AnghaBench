
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cps_pm_state { ____Placeholder_cps_pm_state } cps_pm_state ;


 int state_support ;
 int test_bit (int,int ) ;

bool cps_pm_support_state(enum cps_pm_state state)
{
 return test_bit(state, state_support);
}
