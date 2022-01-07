
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int at91_pm_config_ws (int ,int) ;
 TYPE_2__ soc_pm ;

__attribute__((used)) static void at91_pm_end(void)
{
 at91_pm_config_ws(soc_pm.data.mode, 0);
}
