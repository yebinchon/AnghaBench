
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap_queue {int sb; } ;
struct bt_iter_data {void* data; int reserved; int * fn; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef int busy_iter_fn ;


 int bt_iter ;
 int sbitmap_for_each_set (int *,int ,struct bt_iter_data*) ;

__attribute__((used)) static void bt_for_each(struct blk_mq_hw_ctx *hctx, struct sbitmap_queue *bt,
   busy_iter_fn *fn, void *data, bool reserved)
{
 struct bt_iter_data iter_data = {
  .hctx = hctx,
  .fn = fn,
  .data = data,
  .reserved = reserved,
 };

 sbitmap_for_each_set(&bt->sb, bt_iter, &iter_data);
}
