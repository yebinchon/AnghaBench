
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpulaunch {int flags; } ;


 scalar_t__ CKSEG0ADDR (int ) ;
 int CPULAUNCH ;
 int LAUNCH_FGO ;
 int LAUNCH_FGONE ;
 int LAUNCH_FREADY ;
 int NCPULAUNCH ;
 int pr_debug (char*,int) ;

int amon_cpu_avail(int cpu)
{
 struct cpulaunch *launch = (struct cpulaunch *)CKSEG0ADDR(CPULAUNCH);

 if (cpu < 0 || cpu >= NCPULAUNCH) {
  pr_debug("avail: cpu%d is out of range\n", cpu);
  return 0;
 }

 launch += cpu;
 if (!(launch->flags & LAUNCH_FREADY)) {
  pr_debug("avail: cpu%d is not ready\n", cpu);
  return 0;
 }
 if (launch->flags & (LAUNCH_FGO|LAUNCH_FGONE)) {
  pr_debug("avail: too late.. cpu%d is already gone\n", cpu);
  return 0;
 }

 return 1;
}
