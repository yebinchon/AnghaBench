
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;






__attribute__((used)) static int at91_pm_valid_state(suspend_state_t state)
{
 switch (state) {
  case 129:
  case 128:
  case 130:
   return 1;

  default:
   return 0;
 }
}
