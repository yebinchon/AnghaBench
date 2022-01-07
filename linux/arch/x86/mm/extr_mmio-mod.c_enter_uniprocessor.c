
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_online_cpus () ;
 int pr_warning (char*) ;

__attribute__((used)) static void enter_uniprocessor(void)
{
 if (num_online_cpus() > 1)
  pr_warning("multiple CPUs are online, may miss events. "
      "Suggest booting with maxcpus=1 kernel argument.\n");
}
