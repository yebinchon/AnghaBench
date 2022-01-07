
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct rdtgroup {int flags; struct pseudo_lock_region* plr; } ;
struct pseudo_lock_region {int thread_done; unsigned int cpu; int lock_thread_wq; TYPE_1__* d; } ;
struct TYPE_2__ {int cpu_mask; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int RDT_DELETED ;
 int cpu_online (unsigned int) ;
 int cpu_to_node (unsigned int) ;
 unsigned int cpumask_first (int *) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int kthread_bind (struct task_struct*,unsigned int) ;
 struct task_struct* kthread_create_on_node (int ,struct pseudo_lock_region*,int ,char*,unsigned int) ;
 int measure_cycles_lat_fn ;
 int measure_l2_residency ;
 int measure_l3_residency ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdtgroup_mutex ;
 int wait_event_interruptible (int ,int) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int pseudo_lock_measure_cycles(struct rdtgroup *rdtgrp, int sel)
{
 struct pseudo_lock_region *plr = rdtgrp->plr;
 struct task_struct *thread;
 unsigned int cpu;
 int ret = -1;

 cpus_read_lock();
 mutex_lock(&rdtgroup_mutex);

 if (rdtgrp->flags & RDT_DELETED) {
  ret = -ENODEV;
  goto out;
 }

 if (!plr->d) {
  ret = -ENODEV;
  goto out;
 }

 plr->thread_done = 0;
 cpu = cpumask_first(&plr->d->cpu_mask);
 if (!cpu_online(cpu)) {
  ret = -ENODEV;
  goto out;
 }

 plr->cpu = cpu;

 if (sel == 1)
  thread = kthread_create_on_node(measure_cycles_lat_fn, plr,
      cpu_to_node(cpu),
      "pseudo_lock_measure/%u",
      cpu);
 else if (sel == 2)
  thread = kthread_create_on_node(measure_l2_residency, plr,
      cpu_to_node(cpu),
      "pseudo_lock_measure/%u",
      cpu);
 else if (sel == 3)
  thread = kthread_create_on_node(measure_l3_residency, plr,
      cpu_to_node(cpu),
      "pseudo_lock_measure/%u",
      cpu);
 else
  goto out;

 if (IS_ERR(thread)) {
  ret = PTR_ERR(thread);
  goto out;
 }
 kthread_bind(thread, cpu);
 wake_up_process(thread);

 ret = wait_event_interruptible(plr->lock_thread_wq,
           plr->thread_done == 1);
 if (ret < 0)
  goto out;

 ret = 0;

out:
 mutex_unlock(&rdtgroup_mutex);
 cpus_read_unlock();
 return ret;
}
