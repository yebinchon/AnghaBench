
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int GFP_KERNEL ;
 int dlpar_cpu_add (int) ;
 int dlpar_cpu_remove_by_index (int) ;
 int find_dlpar_cpus_to_add (int*,int) ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int pr_debug (char*,int) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static int dlpar_cpu_add_by_count(u32 cpus_to_add)
{
 u32 *cpu_drcs;
 int cpus_added = 0;
 int cpus_found;
 int i, rc;

 pr_debug("Attempting to hot-add %d CPUs\n", cpus_to_add);

 cpu_drcs = kcalloc(cpus_to_add, sizeof(*cpu_drcs), GFP_KERNEL);
 if (!cpu_drcs)
  return -EINVAL;

 cpus_found = find_dlpar_cpus_to_add(cpu_drcs, cpus_to_add);
 if (cpus_found < cpus_to_add) {
  pr_warn("Failed to find enough CPUs (%d of %d) to add\n",
   cpus_found, cpus_to_add);
  kfree(cpu_drcs);
  return -EINVAL;
 }

 for (i = 0; i < cpus_to_add; i++) {
  rc = dlpar_cpu_add(cpu_drcs[i]);
  if (rc)
   break;

  cpus_added++;
 }

 if (cpus_added < cpus_to_add) {
  pr_warn("CPU hot-add failed, removing any added CPUs\n");

  for (i = 0; i < cpus_added; i++)
   dlpar_cpu_remove_by_index(cpu_drcs[i]);

  rc = -EINVAL;
 } else {
  rc = 0;
 }

 kfree(cpu_drcs);
 return rc;
}
