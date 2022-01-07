
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int freeze_secondary_cpus (scalar_t__) ;
 int pr_err (char*) ;
 scalar_t__ sleep_cpu ;

int hibernate_resume_nonboot_cpu_disable(void)
{
 if (sleep_cpu < 0) {
  pr_err("Failing to resume from hibernate on an unknown CPU.\n");
  return -ENODEV;
 }

 return freeze_secondary_cpus(sleep_cpu);
}
