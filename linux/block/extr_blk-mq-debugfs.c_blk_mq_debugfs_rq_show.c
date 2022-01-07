
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int __blk_mq_debugfs_rq_show (struct seq_file*,int ) ;
 int list_entry_rq (void*) ;

int blk_mq_debugfs_rq_show(struct seq_file *m, void *v)
{
 return __blk_mq_debugfs_rq_show(m, list_entry_rq(v));
}
