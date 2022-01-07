
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_ctx {int rq_merged; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ctx_merged_show(void *data, struct seq_file *m)
{
 struct blk_mq_ctx *ctx = data;

 seq_printf(m, "%lu\n", ctx->rq_merged);
 return 0;
}
