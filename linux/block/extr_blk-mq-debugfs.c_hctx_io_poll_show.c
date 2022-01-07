
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {int poll_success; int poll_invoked; int poll_considered; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hctx_io_poll_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;

 seq_printf(m, "considered=%lu\n", hctx->poll_considered);
 seq_printf(m, "invoked=%lu\n", hctx->poll_invoked);
 seq_printf(m, "success=%lu\n", hctx->poll_success);
 return 0;
}
