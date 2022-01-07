
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int flags; int waitcount; } ;
struct kernfs_node {int dummy; } ;


 int RDT_DELETED ;
 int atomic_inc (int *) ;
 int kernfs_break_active_protection (struct kernfs_node*) ;
 struct rdtgroup* kernfs_to_rdtgroup (struct kernfs_node*) ;
 int mutex_lock (int *) ;
 int rdtgroup_mutex ;

struct rdtgroup *rdtgroup_kn_lock_live(struct kernfs_node *kn)
{
 struct rdtgroup *rdtgrp = kernfs_to_rdtgroup(kn);

 if (!rdtgrp)
  return ((void*)0);

 atomic_inc(&rdtgrp->waitcount);
 kernfs_break_active_protection(kn);

 mutex_lock(&rdtgroup_mutex);


 if (rdtgrp->flags & RDT_DELETED)
  return ((void*)0);

 return rdtgrp;
}
