
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {scalar_t__ mode; struct pseudo_lock_region* plr; int closid; } ;
struct pseudo_lock_region {int minor; int debugfs_dir; } ;


 int MKDEV (int ,int ) ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ;
 int closid_free (int ) ;
 int debugfs_remove_recursive (int ) ;
 int device_destroy (int ,int ) ;
 int pseudo_lock_class ;
 int pseudo_lock_cstates_relax (struct pseudo_lock_region*) ;
 int pseudo_lock_free (struct rdtgroup*) ;
 int pseudo_lock_major ;
 int pseudo_lock_minor_release (int ) ;

void rdtgroup_pseudo_lock_remove(struct rdtgroup *rdtgrp)
{
 struct pseudo_lock_region *plr = rdtgrp->plr;

 if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {




  closid_free(rdtgrp->closid);
  goto free;
 }

 pseudo_lock_cstates_relax(plr);
 debugfs_remove_recursive(rdtgrp->plr->debugfs_dir);
 device_destroy(pseudo_lock_class, MKDEV(pseudo_lock_major, plr->minor));
 pseudo_lock_minor_release(plr->minor);

free:
 pseudo_lock_free(rdtgrp);
}
