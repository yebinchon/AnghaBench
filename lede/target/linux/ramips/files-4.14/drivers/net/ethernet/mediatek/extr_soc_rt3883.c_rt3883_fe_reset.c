
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RT3883_RSTCTRL_FE ;
 int fe_reset (int ) ;

__attribute__((used)) static void rt3883_fe_reset(void)
{
 fe_reset(RT3883_RSTCTRL_FE);
}
