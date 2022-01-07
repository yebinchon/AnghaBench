
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_MODE_UDR ;
 int pxa910_pm_enter_lowpower_mode (int ) ;

__attribute__((used)) static int pxa910_pm_prepare(void)
{
 pxa910_pm_enter_lowpower_mode(POWER_MODE_UDR);
 return 0;
}
