
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rdtgroup {int dummy; } ;
struct kernfs_open_file {int kn; } ;


 int ENOENT ;
 struct rdtgroup* rdtgroup_kn_lock_live (int ) ;
 int rdtgroup_kn_unlock (int ) ;
 int show_rdt_tasks (struct rdtgroup*,struct seq_file*) ;

__attribute__((used)) static int rdtgroup_tasks_show(struct kernfs_open_file *of,
          struct seq_file *s, void *v)
{
 struct rdtgroup *rdtgrp;
 int ret = 0;

 rdtgrp = rdtgroup_kn_lock_live(of->kn);
 if (rdtgrp)
  show_rdt_tasks(rdtgrp, s);
 else
  ret = -ENOENT;
 rdtgroup_kn_unlock(of->kn);

 return ret;
}
