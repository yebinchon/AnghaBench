
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int * debugfs_dir; int * sched_debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void blk_mq_debugfs_unregister_hctx(struct blk_mq_hw_ctx *hctx)
{
 debugfs_remove_recursive(hctx->debugfs_dir);
 hctx->sched_debugfs_dir = ((void*)0);
 hctx->debugfs_dir = ((void*)0);
}
