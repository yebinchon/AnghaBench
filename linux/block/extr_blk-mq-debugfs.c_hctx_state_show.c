
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {int state; } ;


 int ARRAY_SIZE (int ) ;
 int blk_flags_show (struct seq_file*,int ,int ,int ) ;
 int hctx_state_name ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int hctx_state_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;

 blk_flags_show(m, hctx->state, hctx_state_name,
         ARRAY_SIZE(hctx_state_name));
 seq_puts(m, "\n");
 return 0;
}
