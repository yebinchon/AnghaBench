
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int GFP_KERNEL ;
 int dlpar_cpu_add (int) ;
 int dlpar_cpu_remove_by_index (int) ;
 int find_dlpar_cpus_to_remove (int*,int) ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int pr_debug (char*,int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int dlpar_cpu_remove_by_count(u32 cpus_to_remove)
{
 u32 *cpu_drcs;
 int cpus_found;
 int cpus_removed = 0;
 int i, rc;

 pr_debug("Attempting to hot-remove %d CPUs\n", cpus_to_remove);

 cpu_drcs = kcalloc(cpus_to_remove, sizeof(*cpu_drcs), GFP_KERNEL);
 if (!cpu_drcs)
  return -EINVAL;

 cpus_found = find_dlpar_cpus_to_remove(cpu_drcs, cpus_to_remove);
 if (cpus_found <= cpus_to_remove) {
  kfree(cpu_drcs);
  return -EINVAL;
 }

 for (i = 0; i < cpus_to_remove; i++) {
  rc = dlpar_cpu_remove_by_index(cpu_drcs[i]);
  if (rc)
   break;

  cpus_removed++;
 }

 if (cpus_removed != cpus_to_remove) {
  pr_warn("CPU hot-remove failed, adding back removed CPUs\n");

  for (i = 0; i < cpus_removed; i++)
   dlpar_cpu_add(cpu_drcs[i]);

  rc = -EINVAL;
 } else {
  rc = 0;
 }

 kfree(cpu_drcs);
 return rc;
}
