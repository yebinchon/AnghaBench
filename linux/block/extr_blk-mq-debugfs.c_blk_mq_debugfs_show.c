
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {TYPE_3__* file; struct blk_mq_debugfs_attr* private; } ;
struct blk_mq_debugfs_attr {int (* show ) (void*,struct seq_file*) ;} ;
struct TYPE_8__ {void* i_private; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {int d_parent; } ;


 TYPE_4__* d_inode (int ) ;
 int stub1 (void*,struct seq_file*) ;

__attribute__((used)) static int blk_mq_debugfs_show(struct seq_file *m, void *v)
{
 const struct blk_mq_debugfs_attr *attr = m->private;
 void *data = d_inode(m->file->f_path.dentry->d_parent)->i_private;

 return attr->show(data, m);
}
