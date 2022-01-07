
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int suspend; int standby; } ;




 TYPE_1__ cpm ;
 int cpm_suspend_standby (int ) ;

__attribute__((used)) static int cpm_suspend_enter(suspend_state_t state)
{
 switch (state) {
 case 128:
  cpm_suspend_standby(cpm.standby);
  break;
 case 129:
  cpm_suspend_standby(cpm.suspend);
  break;
 }

 return 0;
}
