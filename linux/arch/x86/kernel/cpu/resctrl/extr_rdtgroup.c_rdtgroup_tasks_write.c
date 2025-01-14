
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {scalar_t__ mode; } ;
struct kernfs_open_file {int kn; } ;
typedef size_t ssize_t ;
typedef scalar_t__ pid_t ;
typedef int loff_t ;


 size_t EINVAL ;
 size_t ENOENT ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ;
 scalar_t__ kstrtoint (int ,int ,scalar_t__*) ;
 int rdt_last_cmd_clear () ;
 int rdt_last_cmd_puts (char*) ;
 struct rdtgroup* rdtgroup_kn_lock_live (int ) ;
 int rdtgroup_kn_unlock (int ) ;
 int rdtgroup_move_task (scalar_t__,struct rdtgroup*,struct kernfs_open_file*) ;
 int strstrip (char*) ;

__attribute__((used)) static ssize_t rdtgroup_tasks_write(struct kernfs_open_file *of,
        char *buf, size_t nbytes, loff_t off)
{
 struct rdtgroup *rdtgrp;
 int ret = 0;
 pid_t pid;

 if (kstrtoint(strstrip(buf), 0, &pid) || pid < 0)
  return -EINVAL;
 rdtgrp = rdtgroup_kn_lock_live(of->kn);
 if (!rdtgrp) {
  rdtgroup_kn_unlock(of->kn);
  return -ENOENT;
 }
 rdt_last_cmd_clear();

 if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED ||
     rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
  ret = -EINVAL;
  rdt_last_cmd_puts("Pseudo-locking in progress\n");
  goto unlock;
 }

 ret = rdtgroup_move_task(pid, rdtgrp, of);

unlock:
 rdtgroup_kn_unlock(of->kn);

 return ret ?: nbytes;
}
