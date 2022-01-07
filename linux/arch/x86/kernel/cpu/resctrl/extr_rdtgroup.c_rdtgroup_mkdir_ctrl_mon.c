
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct rdtgroup {int closid; int rdtgroup_list; struct kernfs_node* kn; } ;
struct kernfs_node {int dummy; } ;


 int RDTCTRL_GROUP ;
 int closid_alloc () ;
 int closid_free (int) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mkdir_rdt_prepare (struct kernfs_node*,struct kernfs_node*,char const*,int ,int ,struct rdtgroup**) ;
 int mkdir_rdt_prepare_clean (struct rdtgroup*) ;
 int mongroup_create_dir (struct kernfs_node*,int *,char*,int *) ;
 int rdt_all_groups ;
 int rdt_last_cmd_puts (char*) ;
 scalar_t__ rdt_mon_capable ;
 int rdtgroup_init_alloc (struct rdtgroup*) ;
 int rdtgroup_kn_unlock (struct kernfs_node*) ;

__attribute__((used)) static int rdtgroup_mkdir_ctrl_mon(struct kernfs_node *parent_kn,
       struct kernfs_node *prgrp_kn,
       const char *name, umode_t mode)
{
 struct rdtgroup *rdtgrp;
 struct kernfs_node *kn;
 u32 closid;
 int ret;

 ret = mkdir_rdt_prepare(parent_kn, prgrp_kn, name, mode, RDTCTRL_GROUP,
    &rdtgrp);
 if (ret)
  return ret;

 kn = rdtgrp->kn;
 ret = closid_alloc();
 if (ret < 0) {
  rdt_last_cmd_puts("Out of CLOSIDs\n");
  goto out_common_fail;
 }
 closid = ret;
 ret = 0;

 rdtgrp->closid = closid;
 ret = rdtgroup_init_alloc(rdtgrp);
 if (ret < 0)
  goto out_id_free;

 list_add(&rdtgrp->rdtgroup_list, &rdt_all_groups);

 if (rdt_mon_capable) {




  ret = mongroup_create_dir(kn, ((void*)0), "mon_groups", ((void*)0));
  if (ret) {
   rdt_last_cmd_puts("kernfs subdir error\n");
   goto out_del_list;
  }
 }

 goto out_unlock;

out_del_list:
 list_del(&rdtgrp->rdtgroup_list);
out_id_free:
 closid_free(closid);
out_common_fail:
 mkdir_rdt_prepare_clean(rdtgrp);
out_unlock:
 rdtgroup_kn_unlock(prgrp_kn);
 return ret;
}
