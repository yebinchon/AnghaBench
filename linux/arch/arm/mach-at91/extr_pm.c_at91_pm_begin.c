
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_3__ {int mode; int suspend_mode; int standby_mode; } ;
struct TYPE_4__ {TYPE_1__ data; } ;




 int at91_pm_config_ws (int,int) ;
 TYPE_2__ soc_pm ;

__attribute__((used)) static int at91_pm_begin(suspend_state_t state)
{
 switch (state) {
 case 129:
  soc_pm.data.mode = soc_pm.data.suspend_mode;
  break;

 case 128:
  soc_pm.data.mode = soc_pm.data.standby_mode;
  break;

 default:
  soc_pm.data.mode = -1;
 }

 return at91_pm_config_ws(soc_pm.data.mode, 1);
}
