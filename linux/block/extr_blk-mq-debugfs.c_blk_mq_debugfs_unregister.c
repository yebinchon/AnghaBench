
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * debugfs_dir; int * sched_debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void blk_mq_debugfs_unregister(struct request_queue *q)
{
 debugfs_remove_recursive(q->debugfs_dir);
 q->sched_debugfs_dir = ((void*)0);
 q->debugfs_dir = ((void*)0);
}
