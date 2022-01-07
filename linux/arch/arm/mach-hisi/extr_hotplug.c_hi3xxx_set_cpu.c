
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HI3620_CTRL ;
 int ctrl_base ;
 scalar_t__ hi3xxx_hotplug_init () ;
 scalar_t__ id ;
 int set_cpu_hi3620 (int,int) ;

void hi3xxx_set_cpu(int cpu, bool enable)
{
 if (!ctrl_base) {
  if (hi3xxx_hotplug_init() < 0)
   return;
 }

 if (id == HI3620_CTRL)
  set_cpu_hi3620(cpu, enable);
}
