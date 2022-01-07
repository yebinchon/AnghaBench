
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EFAULT ;
 int berlin_perform_reset_cpu (unsigned int) ;
 int cpu_ctrl ;

__attribute__((used)) static int berlin_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 if (!cpu_ctrl)
  return -EFAULT;





 berlin_perform_reset_cpu(cpu);

 return 0;
}
