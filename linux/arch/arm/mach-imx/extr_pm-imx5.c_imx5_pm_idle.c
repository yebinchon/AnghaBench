
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int imx5_cpu_do_idle () ;

__attribute__((used)) static void imx5_pm_idle(void)
{
 imx5_cpu_do_idle();
}
