
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;





__attribute__((used)) static int lite5200_pm_valid(suspend_state_t state)
{
 switch (state) {
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
