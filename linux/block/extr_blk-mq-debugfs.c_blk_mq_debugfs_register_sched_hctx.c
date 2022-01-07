
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct elevator_type {int hctx_debugfs_attrs; } ;
struct blk_mq_hw_ctx {int sched_debugfs_dir; int debugfs_dir; } ;
struct TYPE_2__ {struct elevator_type* type; } ;


 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_files (int ,struct blk_mq_hw_ctx*,int ) ;

void blk_mq_debugfs_register_sched_hctx(struct request_queue *q,
     struct blk_mq_hw_ctx *hctx)
{
 struct elevator_type *e = q->elevator->type;

 if (!e->hctx_debugfs_attrs)
  return;

 hctx->sched_debugfs_dir = debugfs_create_dir("sched",
           hctx->debugfs_dir);
 debugfs_create_files(hctx->sched_debugfs_dir, hctx,
        e->hctx_debugfs_attrs);
}
