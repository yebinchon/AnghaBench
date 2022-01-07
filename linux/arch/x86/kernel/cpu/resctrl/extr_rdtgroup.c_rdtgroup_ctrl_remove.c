
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int kn; int rdtgroup_list; int flags; } ;
struct kernfs_node {int dummy; } ;


 int RDT_DELETED ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_remove (int ) ;
 int list_del (int *) ;

__attribute__((used)) static int rdtgroup_ctrl_remove(struct kernfs_node *kn,
    struct rdtgroup *rdtgrp)
{
 rdtgrp->flags = RDT_DELETED;
 list_del(&rdtgrp->rdtgroup_list);





 kernfs_get(kn);
 kernfs_remove(rdtgrp->kn);
 return 0;
}
