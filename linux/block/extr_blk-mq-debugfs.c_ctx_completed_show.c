
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_ctx {int * rq_completed; } ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int ctx_completed_show(void *data, struct seq_file *m)
{
 struct blk_mq_ctx *ctx = data;

 seq_printf(m, "%lu %lu\n", ctx->rq_completed[1], ctx->rq_completed[0]);
 return 0;
}
