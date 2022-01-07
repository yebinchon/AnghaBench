
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nlm_soc_info {int coremask; int picbase; } ;


 int BOOT_CPU_READY ;
 unsigned int NLM_THREADS_PER_CORE ;
 unsigned int NR_CPUS ;
 int cpumask_test_cpu (unsigned int,int *) ;
 unsigned int hard_smp_processor_id () ;
 unsigned int nlm_cores_per_node () ;
 int nlm_cpumask ;
 scalar_t__* nlm_get_boot_data (int ) ;
 struct nlm_soc_info* nlm_get_node (int ) ;
 int nlm_pic_send_ipi (int ,unsigned int,int,int) ;
 int nlm_rmiboot_preboot ;
 int nlm_set_nmi_handler (int ) ;
 int pr_err (char*,unsigned int) ;
 int udelay (int) ;

int xlr_wakeup_secondary_cpus(void)
{
 struct nlm_soc_info *nodep;
 unsigned int i, j, boot_cpu;
 volatile u32 *cpu_ready = nlm_get_boot_data(BOOT_CPU_READY);





 nodep = nlm_get_node(0);
 boot_cpu = hard_smp_processor_id();
 nlm_set_nmi_handler(nlm_rmiboot_preboot);
 for (i = 0; i < NR_CPUS; i++) {
  if (i == boot_cpu || !cpumask_test_cpu(i, &nlm_cpumask))
   continue;
  nlm_pic_send_ipi(nodep->picbase, i, 1, 1);
 }


 nodep->coremask = 1;
 for (i = 1; i < nlm_cores_per_node(); i++) {
  for (j = 1000000; j > 0; j--) {
   if (cpu_ready[i * NLM_THREADS_PER_CORE])
    break;
   udelay(10);
  }
  if (j != 0)
   nodep->coremask |= (1u << i);
  else
   pr_err("Failed to wakeup core %d\n", i);
 }

 return 0;
}
