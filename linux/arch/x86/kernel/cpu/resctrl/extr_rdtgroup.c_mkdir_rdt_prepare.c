
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
typedef int uint ;
struct TYPE_2__ {int rmid; int mon_data_kn; int crdtgrp_list; struct rdtgroup* parent; } ;
struct rdtgroup {scalar_t__ mode; int type; struct kernfs_node* kn; TYPE_1__ mon; } ;
struct kernfs_node {int dummy; } ;
typedef enum rdt_group_type { ____Placeholder_rdt_group_type } rdt_group_type ;


 int BIT (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 int RDTMON_GROUP ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKED ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ;
 int RFTYPE_BASE ;
 int RF_CTRLSHIFT ;
 int alloc_rmid () ;
 int free_rmid (int) ;
 int kernfs_activate (struct kernfs_node*) ;
 struct kernfs_node* kernfs_create_dir (struct kernfs_node*,char const*,int ,struct rdtgroup*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_remove (struct kernfs_node*) ;
 int kfree (struct rdtgroup*) ;
 struct rdtgroup* kzalloc (int,int ) ;
 int mkdir_mondata_all (struct kernfs_node*,struct rdtgroup*,int *) ;
 int rdt_last_cmd_clear () ;
 int rdt_last_cmd_puts (char*) ;
 scalar_t__ rdt_mon_capable ;
 int rdtgroup_add_files (struct kernfs_node*,int) ;
 struct rdtgroup* rdtgroup_kn_lock_live (struct kernfs_node*) ;
 int rdtgroup_kn_set_ugid (struct kernfs_node*) ;
 int rdtgroup_kn_unlock (struct kernfs_node*) ;

__attribute__((used)) static int mkdir_rdt_prepare(struct kernfs_node *parent_kn,
        struct kernfs_node *prgrp_kn,
        const char *name, umode_t mode,
        enum rdt_group_type rtype, struct rdtgroup **r)
{
 struct rdtgroup *prdtgrp, *rdtgrp;
 struct kernfs_node *kn;
 uint files = 0;
 int ret;

 prdtgrp = rdtgroup_kn_lock_live(prgrp_kn);
 rdt_last_cmd_clear();
 if (!prdtgrp) {
  ret = -ENODEV;
  rdt_last_cmd_puts("Directory was removed\n");
  goto out_unlock;
 }

 if (rtype == RDTMON_GROUP &&
     (prdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP ||
      prdtgrp->mode == RDT_MODE_PSEUDO_LOCKED)) {
  ret = -EINVAL;
  rdt_last_cmd_puts("Pseudo-locking in progress\n");
  goto out_unlock;
 }


 rdtgrp = kzalloc(sizeof(*rdtgrp), GFP_KERNEL);
 if (!rdtgrp) {
  ret = -ENOSPC;
  rdt_last_cmd_puts("Kernel out of memory\n");
  goto out_unlock;
 }
 *r = rdtgrp;
 rdtgrp->mon.parent = prdtgrp;
 rdtgrp->type = rtype;
 INIT_LIST_HEAD(&rdtgrp->mon.crdtgrp_list);


 kn = kernfs_create_dir(parent_kn, name, mode, rdtgrp);
 if (IS_ERR(kn)) {
  ret = PTR_ERR(kn);
  rdt_last_cmd_puts("kernfs create error\n");
  goto out_free_rgrp;
 }
 rdtgrp->kn = kn;







 kernfs_get(kn);

 ret = rdtgroup_kn_set_ugid(kn);
 if (ret) {
  rdt_last_cmd_puts("kernfs perm error\n");
  goto out_destroy;
 }

 files = RFTYPE_BASE | BIT(RF_CTRLSHIFT + rtype);
 ret = rdtgroup_add_files(kn, files);
 if (ret) {
  rdt_last_cmd_puts("kernfs fill error\n");
  goto out_destroy;
 }

 if (rdt_mon_capable) {
  ret = alloc_rmid();
  if (ret < 0) {
   rdt_last_cmd_puts("Out of RMIDs\n");
   goto out_destroy;
  }
  rdtgrp->mon.rmid = ret;

  ret = mkdir_mondata_all(kn, rdtgrp, &rdtgrp->mon.mon_data_kn);
  if (ret) {
   rdt_last_cmd_puts("kernfs subdir error\n");
   goto out_idfree;
  }
 }
 kernfs_activate(kn);




 return 0;

out_idfree:
 free_rmid(rdtgrp->mon.rmid);
out_destroy:
 kernfs_remove(rdtgrp->kn);
out_free_rgrp:
 kfree(rdtgrp);
out_unlock:
 rdtgroup_kn_unlock(prgrp_kn);
 return ret;
}
