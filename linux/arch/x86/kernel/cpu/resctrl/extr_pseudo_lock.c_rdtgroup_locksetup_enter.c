
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rmid; } ;
struct rdtgroup {TYPE_1__ mon; int cpu_mask; } ;
struct TYPE_4__ {scalar_t__ alloc_enabled; } ;


 int EINVAL ;
 int EIO ;
 size_t RDT_RESOURCE_L2DATA ;
 size_t RDT_RESOURCE_L3DATA ;
 int cpumask_empty (int *) ;
 int free_rmid (int ) ;
 scalar_t__ get_prefetch_disable_bits () ;
 scalar_t__ prefetch_disable_bits ;
 int pseudo_lock_init (struct rdtgroup*) ;
 int rdt_last_cmd_puts (char*) ;
 TYPE_2__* rdt_resources_all ;
 struct rdtgroup rdtgroup_default ;
 int rdtgroup_locksetup_user_restore (struct rdtgroup*) ;
 scalar_t__ rdtgroup_locksetup_user_restrict (struct rdtgroup*) ;
 scalar_t__ rdtgroup_monitor_in_progress (struct rdtgroup*) ;
 scalar_t__ rdtgroup_tasks_assigned (struct rdtgroup*) ;

int rdtgroup_locksetup_enter(struct rdtgroup *rdtgrp)
{
 int ret;





 if (rdtgrp == &rdtgroup_default) {
  rdt_last_cmd_puts("Cannot pseudo-lock default group\n");
  return -EINVAL;
 }
 if (rdt_resources_all[RDT_RESOURCE_L3DATA].alloc_enabled ||
     rdt_resources_all[RDT_RESOURCE_L2DATA].alloc_enabled) {
  rdt_last_cmd_puts("CDP enabled\n");
  return -EINVAL;
 }





 prefetch_disable_bits = get_prefetch_disable_bits();
 if (prefetch_disable_bits == 0) {
  rdt_last_cmd_puts("Pseudo-locking not supported\n");
  return -EINVAL;
 }

 if (rdtgroup_monitor_in_progress(rdtgrp)) {
  rdt_last_cmd_puts("Monitoring in progress\n");
  return -EINVAL;
 }

 if (rdtgroup_tasks_assigned(rdtgrp)) {
  rdt_last_cmd_puts("Tasks assigned to resource group\n");
  return -EINVAL;
 }

 if (!cpumask_empty(&rdtgrp->cpu_mask)) {
  rdt_last_cmd_puts("CPUs assigned to resource group\n");
  return -EINVAL;
 }

 if (rdtgroup_locksetup_user_restrict(rdtgrp)) {
  rdt_last_cmd_puts("Unable to modify resctrl permissions\n");
  return -EIO;
 }

 ret = pseudo_lock_init(rdtgrp);
 if (ret) {
  rdt_last_cmd_puts("Unable to init pseudo-lock region\n");
  goto out_release;
 }







 free_rmid(rdtgrp->mon.rmid);

 ret = 0;
 goto out;

out_release:
 rdtgroup_locksetup_user_restore(rdtgrp);
out:
 return ret;
}
