
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdtgroup {scalar_t__ type; scalar_t__ mode; } ;
struct kernfs_node {int name; struct kernfs_node* parent; } ;
typedef int cpumask_var_t ;
struct TYPE_2__ {struct kernfs_node* kn; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ RDTCTRL_GROUP ;
 scalar_t__ RDTMON_GROUP ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ;
 int free_cpumask_var (int ) ;
 scalar_t__ is_mon_groups (struct kernfs_node*,int ) ;
 int rdtgroup_ctrl_remove (struct kernfs_node*,struct rdtgroup*) ;
 TYPE_1__ rdtgroup_default ;
 struct rdtgroup* rdtgroup_kn_lock_live (struct kernfs_node*) ;
 int rdtgroup_kn_unlock (struct kernfs_node*) ;
 int rdtgroup_rmdir_ctrl (struct kernfs_node*,struct rdtgroup*,int ) ;
 int rdtgroup_rmdir_mon (struct kernfs_node*,struct rdtgroup*,int ) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int rdtgroup_rmdir(struct kernfs_node *kn)
{
 struct kernfs_node *parent_kn = kn->parent;
 struct rdtgroup *rdtgrp;
 cpumask_var_t tmpmask;
 int ret = 0;

 if (!zalloc_cpumask_var(&tmpmask, GFP_KERNEL))
  return -ENOMEM;

 rdtgrp = rdtgroup_kn_lock_live(kn);
 if (!rdtgrp) {
  ret = -EPERM;
  goto out;
 }
 if (rdtgrp->type == RDTCTRL_GROUP && parent_kn == rdtgroup_default.kn) {
  if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP ||
      rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED) {
   ret = rdtgroup_ctrl_remove(kn, rdtgrp);
  } else {
   ret = rdtgroup_rmdir_ctrl(kn, rdtgrp, tmpmask);
  }
 } else if (rdtgrp->type == RDTMON_GROUP &&
   is_mon_groups(parent_kn, kn->name)) {
  ret = rdtgroup_rmdir_mon(kn, rdtgrp, tmpmask);
 } else {
  ret = -EPERM;
 }

out:
 rdtgroup_kn_unlock(kn);
 free_cpumask_var(tmpmask);
 return ret;
}
