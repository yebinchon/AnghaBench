
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct show_busy_params {struct blk_mq_hw_ctx* hctx; struct seq_file* m; } ;
struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
struct TYPE_2__ {int tag_set; } ;


 int blk_mq_tagset_busy_iter (int ,int ,struct show_busy_params*) ;
 int hctx_show_busy_rq ;

__attribute__((used)) static int hctx_busy_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;
 struct show_busy_params params = { .m = m, .hctx = hctx };

 blk_mq_tagset_busy_iter(hctx->queue->tag_set, hctx_show_busy_rq,
    &params);

 return 0;
}
