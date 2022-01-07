
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;
 int lite5200_pm_target_state ;
 scalar_t__ lite5200_pm_valid (int ) ;

__attribute__((used)) static int lite5200_pm_begin(suspend_state_t state)
{
 if (lite5200_pm_valid(state)) {
  lite5200_pm_target_state = state;
  return 0;
 }
 return -EINVAL;
}
