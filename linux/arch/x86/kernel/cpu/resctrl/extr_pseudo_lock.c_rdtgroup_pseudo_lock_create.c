
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct rdtgroup {int flags; int closid; int mode; TYPE_1__* kn; struct pseudo_lock_region* plr; } ;
struct pseudo_lock_region {int thread_done; unsigned int minor; int debugfs_dir; int lock_thread_wq; int cpu; } ;
typedef struct task_struct device ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int IS_ERR_OR_NULL (int ) ;
 int MKDEV (int ,unsigned int) ;
 int PTR_ERR (struct task_struct*) ;
 int RDT_DELETED ;
 int RDT_MODE_PSEUDO_LOCKED ;
 int closid_free (int ) ;
 int cpu_to_node (int ) ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct rdtgroup*,int *) ;
 int debugfs_remove_recursive (int ) ;
 int debugfs_resctrl ;
 struct task_struct* device_create (int ,int *,int ,struct rdtgroup*,char*,int ) ;
 int device_destroy (int ,int ) ;
 int kthread_bind (struct task_struct*,int ) ;
 struct task_struct* kthread_create_on_node (int ,struct rdtgroup*,int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pseudo_lock_class ;
 int pseudo_lock_cstates_constrain (struct pseudo_lock_region*) ;
 int pseudo_lock_cstates_relax (struct pseudo_lock_region*) ;
 int pseudo_lock_fn ;
 int pseudo_lock_major ;
 int pseudo_lock_minor_get (unsigned int*) ;
 int pseudo_lock_minor_release (unsigned int) ;
 int pseudo_lock_region_alloc (struct pseudo_lock_region*) ;
 int pseudo_lock_region_clear (struct pseudo_lock_region*) ;
 int pseudo_measure_fops ;
 int rdt_last_cmd_printf (char*,int) ;
 int rdt_last_cmd_puts (char*) ;
 int rdtgroup_kn_mode_restore (struct rdtgroup*,char*,int) ;
 int rdtgroup_mutex ;
 int wait_event_interruptible (int ,int) ;
 int wake_up_process (struct task_struct*) ;

int rdtgroup_pseudo_lock_create(struct rdtgroup *rdtgrp)
{
 struct pseudo_lock_region *plr = rdtgrp->plr;
 struct task_struct *thread;
 unsigned int new_minor;
 struct device *dev;
 int ret;

 ret = pseudo_lock_region_alloc(plr);
 if (ret < 0)
  return ret;

 ret = pseudo_lock_cstates_constrain(plr);
 if (ret < 0) {
  ret = -EINVAL;
  goto out_region;
 }

 plr->thread_done = 0;

 thread = kthread_create_on_node(pseudo_lock_fn, rdtgrp,
     cpu_to_node(plr->cpu),
     "pseudo_lock/%u", plr->cpu);
 if (IS_ERR(thread)) {
  ret = PTR_ERR(thread);
  rdt_last_cmd_printf("Locking thread returned error %d\n", ret);
  goto out_cstates;
 }

 kthread_bind(thread, plr->cpu);
 wake_up_process(thread);

 ret = wait_event_interruptible(plr->lock_thread_wq,
           plr->thread_done == 1);
 if (ret < 0) {
  rdt_last_cmd_puts("Locking thread interrupted\n");
  goto out_cstates;
 }

 ret = pseudo_lock_minor_get(&new_minor);
 if (ret < 0) {
  rdt_last_cmd_puts("Unable to obtain a new minor number\n");
  goto out_cstates;
 }
 mutex_unlock(&rdtgroup_mutex);

 if (!IS_ERR_OR_NULL(debugfs_resctrl)) {
  plr->debugfs_dir = debugfs_create_dir(rdtgrp->kn->name,
            debugfs_resctrl);
  if (!IS_ERR_OR_NULL(plr->debugfs_dir))
   debugfs_create_file("pseudo_lock_measure", 0200,
         plr->debugfs_dir, rdtgrp,
         &pseudo_measure_fops);
 }

 dev = device_create(pseudo_lock_class, ((void*)0),
       MKDEV(pseudo_lock_major, new_minor),
       rdtgrp, "%s", rdtgrp->kn->name);

 mutex_lock(&rdtgroup_mutex);

 if (IS_ERR(dev)) {
  ret = PTR_ERR(dev);
  rdt_last_cmd_printf("Failed to create character device: %d\n",
        ret);
  goto out_debugfs;
 }


 if (rdtgrp->flags & RDT_DELETED) {
  ret = -ENODEV;
  goto out_device;
 }

 plr->minor = new_minor;

 rdtgrp->mode = RDT_MODE_PSEUDO_LOCKED;
 closid_free(rdtgrp->closid);
 rdtgroup_kn_mode_restore(rdtgrp, "cpus", 0444);
 rdtgroup_kn_mode_restore(rdtgrp, "cpus_list", 0444);

 ret = 0;
 goto out;

out_device:
 device_destroy(pseudo_lock_class, MKDEV(pseudo_lock_major, new_minor));
out_debugfs:
 debugfs_remove_recursive(plr->debugfs_dir);
 pseudo_lock_minor_release(new_minor);
out_cstates:
 pseudo_lock_cstates_relax(plr);
out_region:
 pseudo_lock_region_clear(plr);
out:
 return ret;
}
