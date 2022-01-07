
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_2__ {int crdtgrp_list; struct rdtgroup* parent; } ;
struct rdtgroup {TYPE_1__ mon; int closid; } ;
struct kernfs_node {int dummy; } ;


 int RDTMON_GROUP ;
 int list_add_tail (int *,int *) ;
 int mkdir_rdt_prepare (struct kernfs_node*,struct kernfs_node*,char const*,int ,int ,struct rdtgroup**) ;
 int rdtgroup_kn_unlock (struct kernfs_node*) ;

__attribute__((used)) static int rdtgroup_mkdir_mon(struct kernfs_node *parent_kn,
         struct kernfs_node *prgrp_kn,
         const char *name,
         umode_t mode)
{
 struct rdtgroup *rdtgrp, *prgrp;
 int ret;

 ret = mkdir_rdt_prepare(parent_kn, prgrp_kn, name, mode, RDTMON_GROUP,
    &rdtgrp);
 if (ret)
  return ret;

 prgrp = rdtgrp->mon.parent;
 rdtgrp->closid = prgrp->closid;





 list_add_tail(&rdtgrp->mon.crdtgrp_list, &prgrp->mon.crdtgrp_list);

 rdtgroup_kn_unlock(prgrp_kn);
 return ret;
}
