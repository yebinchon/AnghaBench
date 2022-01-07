
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {unsigned int nr_reserved_tags; int const nr_tags; int breserved_tags; int bitmap_tags; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int cpu; } ;


 int BUG_ON (int) ;
 int blk_mq_tag_is_reserved (struct blk_mq_tags*,unsigned int) ;
 int sbitmap_queue_clear (int *,int const,int ) ;

void blk_mq_put_tag(struct blk_mq_hw_ctx *hctx, struct blk_mq_tags *tags,
      struct blk_mq_ctx *ctx, unsigned int tag)
{
 if (!blk_mq_tag_is_reserved(tags, tag)) {
  const int real_tag = tag - tags->nr_reserved_tags;

  BUG_ON(real_tag >= tags->nr_tags);
  sbitmap_queue_clear(&tags->bitmap_tags, real_tag, ctx->cpu);
 } else {
  BUG_ON(tag >= tags->nr_reserved_tags);
  sbitmap_queue_clear(&tags->breserved_tags, tag, ctx->cpu);
 }
}
