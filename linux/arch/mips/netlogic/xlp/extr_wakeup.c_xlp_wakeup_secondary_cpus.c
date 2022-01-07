
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_cpumask ;
 int pr_err (char*) ;
 int wait_for_cpus (int ,int ) ;
 int xlp_boot_core0_siblings () ;
 int xlp_enable_secondary_cores (int *) ;

void xlp_wakeup_secondary_cpus(void)
{




 xlp_boot_core0_siblings();
 if (!wait_for_cpus(0, 0))
  pr_err("Node 0 : timeout core 0\n");


 xlp_enable_secondary_cores(&nlm_cpumask);
}
