
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * rqos_debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void blk_mq_debugfs_unregister_queue_rqos(struct request_queue *q)
{
 debugfs_remove_recursive(q->rqos_debugfs_dir);
 q->rqos_debugfs_dir = ((void*)0);
}
