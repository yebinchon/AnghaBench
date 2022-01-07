
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;




 long EINVAL ;
 long get_cpuid_mode () ;
 long set_cpuid_mode (struct task_struct*,unsigned long) ;

long do_arch_prctl_common(struct task_struct *task, int option,
     unsigned long cpuid_enabled)
{
 switch (option) {
 case 129:
  return get_cpuid_mode();
 case 128:
  return set_cpuid_mode(task, cpuid_enabled);
 }

 return -EINVAL;
}
