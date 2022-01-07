
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int flags; scalar_t__ mode; int kn; int waitcount; } ;
struct kernfs_node {int dummy; } ;


 int RDT_DELETED ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kernfs_put (int ) ;
 struct rdtgroup* kernfs_to_rdtgroup (struct kernfs_node*) ;
 int kernfs_unbreak_active_protection (struct kernfs_node*) ;
 int kfree (struct rdtgroup*) ;
 int mutex_unlock (int *) ;
 int rdtgroup_mutex ;
 int rdtgroup_pseudo_lock_remove (struct rdtgroup*) ;

void rdtgroup_kn_unlock(struct kernfs_node *kn)
{
 struct rdtgroup *rdtgrp = kernfs_to_rdtgroup(kn);

 if (!rdtgrp)
  return;

 mutex_unlock(&rdtgroup_mutex);

 if (atomic_dec_and_test(&rdtgrp->waitcount) &&
     (rdtgrp->flags & RDT_DELETED)) {
  if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP ||
      rdtgrp->mode == RDT_MODE_PSEUDO_LOCKED)
   rdtgroup_pseudo_lock_remove(rdtgrp);
  kernfs_unbreak_active_protection(kn);
  kernfs_put(rdtgrp->kn);
  kfree(rdtgrp);
 } else {
  kernfs_unbreak_active_protection(kn);
 }
}
