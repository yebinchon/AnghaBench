
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {int ctx_map; } ;


 int sbitmap_bitmap_show (int *,struct seq_file*) ;

__attribute__((used)) static int hctx_ctx_map_show(void *data, struct seq_file *m)
{
 struct blk_mq_hw_ctx *hctx = data;

 sbitmap_bitmap_show(&hctx->ctx_map, m);
 return 0;
}
