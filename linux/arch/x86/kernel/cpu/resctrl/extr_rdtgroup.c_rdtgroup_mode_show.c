
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rdtgroup {int mode; } ;
struct kernfs_open_file {int kn; } ;


 int ENOENT ;
 struct rdtgroup* rdtgroup_kn_lock_live (int ) ;
 int rdtgroup_kn_unlock (int ) ;
 int rdtgroup_mode_str (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int rdtgroup_mode_show(struct kernfs_open_file *of,
         struct seq_file *s, void *v)
{
 struct rdtgroup *rdtgrp;

 rdtgrp = rdtgroup_kn_lock_live(of->kn);
 if (!rdtgrp) {
  rdtgroup_kn_unlock(of->kn);
  return -ENOENT;
 }

 seq_printf(s, "%s\n", rdtgroup_mode_str(rdtgrp->mode));

 rdtgroup_kn_unlock(of->kn);
 return 0;
}
