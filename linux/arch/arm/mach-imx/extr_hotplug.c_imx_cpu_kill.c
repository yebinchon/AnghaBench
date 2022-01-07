
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int imx_enable_cpu (unsigned int,int) ;
 scalar_t__ imx_get_cpu_arg (unsigned int) ;
 int imx_set_cpu_arg (unsigned int,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int imx_cpu_kill(unsigned int cpu)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(50);

 while (imx_get_cpu_arg(cpu) == 0)
  if (time_after(jiffies, timeout))
   return 0;
 imx_enable_cpu(cpu, 0);
 imx_set_cpu_arg(cpu, 0);
 return 1;
}
