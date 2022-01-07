
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int suspend; int standby; } ;




 TYPE_1__ cpm ;

__attribute__((used)) static int cpm_suspend_valid(suspend_state_t state)
{
 switch (state) {
 case 128:
  return !!cpm.standby;
 case 129:
  return !!cpm.suspend;
 default:
  return 0;
 }
}
