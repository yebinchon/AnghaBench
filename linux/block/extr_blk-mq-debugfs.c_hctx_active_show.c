
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {int nr_active; } ;


 int atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hctx_active_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;

 seq_printf(m, "%d\n", atomic_read(&hctx->nr_active));
 return 0;
}
