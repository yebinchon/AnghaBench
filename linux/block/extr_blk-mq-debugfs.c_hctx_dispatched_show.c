
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {int * dispatched; } ;


 int BLK_MQ_MAX_DISPATCH_ORDER ;
 int seq_printf (struct seq_file*,char*,unsigned int,int ) ;

__attribute__((used)) static int hctx_dispatched_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;
 int i;

 seq_printf(m, "%8u\t%lu\n", 0U, hctx->dispatched[0]);

 for (i = 1; i < BLK_MQ_MAX_DISPATCH_ORDER - 1; i++) {
  unsigned int d = 1U << (i - 1);

  seq_printf(m, "%8u\t%lu\n", d, hctx->dispatched[i]);
 }

 seq_printf(m, "%8u+\t%lu\n", 1U << (i - 1), hctx->dispatched[i]);
 return 0;
}
