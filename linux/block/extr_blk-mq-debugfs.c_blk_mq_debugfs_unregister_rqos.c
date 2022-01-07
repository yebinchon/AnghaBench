
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {int * debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void blk_mq_debugfs_unregister_rqos(struct rq_qos *rqos)
{
 debugfs_remove_recursive(rqos->debugfs_dir);
 rqos->debugfs_dir = ((void*)0);
}
