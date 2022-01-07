
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ENODEV ;
 int X86_FEATURE_CPUID_FAULT ;
 int boot_cpu_has (int ) ;
 int disable_cpuid () ;
 int enable_cpuid () ;

__attribute__((used)) static int set_cpuid_mode(struct task_struct *task, unsigned long cpuid_enabled)
{
 if (!boot_cpu_has(X86_FEATURE_CPUID_FAULT))
  return -ENODEV;

 if (cpuid_enabled)
  enable_cpuid();
 else
  disable_cpuid();

 return 0;
}
