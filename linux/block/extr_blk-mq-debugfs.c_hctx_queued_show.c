
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {int queued; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hctx_queued_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;

 seq_printf(m, "%lu\n", hctx->queued);
 return 0;
}
