
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct kernfs_open_file* private; } ;
struct rftype {int (* seq_show ) (struct kernfs_open_file*,struct seq_file*,void*) ;} ;
struct kernfs_open_file {TYPE_1__* kn; } ;
struct TYPE_2__ {struct rftype* priv; } ;


 int stub1 (struct kernfs_open_file*,struct seq_file*,void*) ;

__attribute__((used)) static int rdtgroup_seqfile_show(struct seq_file *m, void *arg)
{
 struct kernfs_open_file *of = m->private;
 struct rftype *rft = of->kn->priv;

 if (rft->seq_show)
  return rft->seq_show(of, m, arg);
 return 0;
}
