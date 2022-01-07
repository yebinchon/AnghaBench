
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;

 int kirkwood_low_power () ;

__attribute__((used)) static int kirkwood_suspend_enter(suspend_state_t state)
{
 switch (state) {
 case 128:
  kirkwood_low_power();
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
