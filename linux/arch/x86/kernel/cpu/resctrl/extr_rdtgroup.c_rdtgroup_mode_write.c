
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int mode; } ;
struct kernfs_open_file {int kn; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
typedef enum rdtgrp_mode { ____Placeholder_rdtgrp_mode } rdtgrp_mode ;


 size_t EINVAL ;
 size_t ENOENT ;
 int RDT_MODE_EXCLUSIVE ;
 int RDT_MODE_PSEUDO_LOCKED ;
 int RDT_MODE_PSEUDO_LOCKSETUP ;
 int RDT_MODE_SHAREABLE ;
 int rdt_last_cmd_clear () ;
 int rdt_last_cmd_puts (char*) ;
 struct rdtgroup* rdtgroup_kn_lock_live (int ) ;
 int rdtgroup_kn_unlock (int ) ;
 int rdtgroup_locksetup_enter (struct rdtgroup*) ;
 int rdtgroup_locksetup_exit (struct rdtgroup*) ;
 int rdtgroup_mode_test_exclusive (struct rdtgroup*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static ssize_t rdtgroup_mode_write(struct kernfs_open_file *of,
       char *buf, size_t nbytes, loff_t off)
{
 struct rdtgroup *rdtgrp;
 enum rdtgrp_mode mode;
 int ret = 0;


 if (nbytes == 0 || buf[nbytes - 1] != '\n')
  return -EINVAL;
 buf[nbytes - 1] = '\0';

 rdtgrp = rdtgroup_kn_lock_live(of->kn);
 if (!rdtgrp) {
  rdtgroup_kn_unlock(of->kn);
  return -ENOENT;
 }

 rdt_last_cmd_clear();

 mode = rdtgrp->mode;

 if ((!strcmp(buf, "shareable") && mode == RDT_MODE_SHAREABLE) ||
     (!strcmp(buf, "exclusive") && mode == RDT_MODE_EXCLUSIVE) ||
     (!strcmp(buf, "pseudo-locksetup") &&
      mode == RDT_MODE_PSEUDO_LOCKSETUP) ||
     (!strcmp(buf, "pseudo-locked") && mode == RDT_MODE_PSEUDO_LOCKED))
  goto out;

 if (mode == RDT_MODE_PSEUDO_LOCKED) {
  rdt_last_cmd_puts("Cannot change pseudo-locked group\n");
  ret = -EINVAL;
  goto out;
 }

 if (!strcmp(buf, "shareable")) {
  if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
   ret = rdtgroup_locksetup_exit(rdtgrp);
   if (ret)
    goto out;
  }
  rdtgrp->mode = RDT_MODE_SHAREABLE;
 } else if (!strcmp(buf, "exclusive")) {
  if (!rdtgroup_mode_test_exclusive(rdtgrp)) {
   ret = -EINVAL;
   goto out;
  }
  if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
   ret = rdtgroup_locksetup_exit(rdtgrp);
   if (ret)
    goto out;
  }
  rdtgrp->mode = RDT_MODE_EXCLUSIVE;
 } else if (!strcmp(buf, "pseudo-locksetup")) {
  ret = rdtgroup_locksetup_enter(rdtgrp);
  if (ret)
   goto out;
  rdtgrp->mode = RDT_MODE_PSEUDO_LOCKSETUP;
 } else {
  rdt_last_cmd_puts("Unknown or unsupported mode\n");
  ret = -EINVAL;
 }

out:
 rdtgroup_kn_unlock(of->kn);
 return ret ?: nbytes;
}
