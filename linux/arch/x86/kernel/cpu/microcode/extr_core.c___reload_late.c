
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ucode_state { ____Placeholder_ucode_state } ucode_state ;


 int NSEC_PER_SEC ;
 int UCODE_NFOUND ;
 int UCODE_OK ;
 int UCODE_UPDATED ;
 scalar_t__ __wait_for_cpus (int *,int) ;
 int apply_microcode_local (int*) ;
 int late_cpus_in ;
 int late_cpus_out ;
 int num_online_cpus () ;
 int panic (char*) ;
 int pr_warn (char*,int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int smp_processor_id () ;
 int update_lock ;

__attribute__((used)) static int __reload_late(void *info)
{
 int cpu = smp_processor_id();
 enum ucode_state err;
 int ret = 0;





 if (__wait_for_cpus(&late_cpus_in, NSEC_PER_SEC))
  return -1;

 raw_spin_lock(&update_lock);
 apply_microcode_local(&err);
 raw_spin_unlock(&update_lock);


 if (err > UCODE_NFOUND) {
  pr_warn("Error reloading microcode on CPU %d\n", cpu);
  ret = -1;
 } else if (err == UCODE_UPDATED || err == UCODE_OK) {
  ret = 1;
 }







 if (__wait_for_cpus(&late_cpus_out, NSEC_PER_SEC * num_online_cpus()))
  panic("Timeout during microcode update!\n");

 return ret;
}
