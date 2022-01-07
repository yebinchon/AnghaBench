
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 scalar_t__ AT91_PM_ULP0 ;
 TYPE_2__ soc_pm ;

int at91_suspend_entering_slow_clock(void)
{
 return (soc_pm.data.mode >= AT91_PM_ULP0);
}
