
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int dummy; } ;
struct sbitmap_queue {int dummy; } ;
struct blk_mq_tags {unsigned int nr_reserved_tags; struct sbitmap_queue bitmap_tags; struct sbitmap_queue breserved_tags; } ;
struct blk_mq_alloc_data {int flags; int hctx; int ctx; int cmd_flags; int q; } ;


 int BLK_MQ_REQ_NOWAIT ;
 int BLK_MQ_REQ_RESERVED ;
 unsigned int BLK_MQ_TAG_FAIL ;
 int DEFINE_SBQ_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON_ONCE (int) ;
 int __blk_mq_get_tag (struct blk_mq_alloc_data*,struct sbitmap_queue*) ;
 int blk_mq_get_ctx (int ) ;
 int blk_mq_map_queue (int ,int ,int ) ;
 int blk_mq_run_hw_queue (int ,int) ;
 struct blk_mq_tags* blk_mq_tags_from_data (struct blk_mq_alloc_data*) ;
 struct sbq_wait_state* bt_wait_ptr (struct sbitmap_queue*,int ) ;
 int io_schedule () ;
 int sbitmap_finish_wait (struct sbitmap_queue*,struct sbq_wait_state*,int *) ;
 int sbitmap_prepare_to_wait (struct sbitmap_queue*,struct sbq_wait_state*,int *,int ) ;
 int sbitmap_queue_wake_up (struct sbitmap_queue*) ;
 scalar_t__ unlikely (int) ;
 int wait ;

unsigned int blk_mq_get_tag(struct blk_mq_alloc_data *data)
{
 struct blk_mq_tags *tags = blk_mq_tags_from_data(data);
 struct sbitmap_queue *bt;
 struct sbq_wait_state *ws;
 DEFINE_SBQ_WAIT(wait);
 unsigned int tag_offset;
 int tag;

 if (data->flags & BLK_MQ_REQ_RESERVED) {
  if (unlikely(!tags->nr_reserved_tags)) {
   WARN_ON_ONCE(1);
   return BLK_MQ_TAG_FAIL;
  }
  bt = &tags->breserved_tags;
  tag_offset = 0;
 } else {
  bt = &tags->bitmap_tags;
  tag_offset = tags->nr_reserved_tags;
 }

 tag = __blk_mq_get_tag(data, bt);
 if (tag != -1)
  goto found_tag;

 if (data->flags & BLK_MQ_REQ_NOWAIT)
  return BLK_MQ_TAG_FAIL;

 ws = bt_wait_ptr(bt, data->hctx);
 do {
  struct sbitmap_queue *bt_prev;






  blk_mq_run_hw_queue(data->hctx, 0);





  tag = __blk_mq_get_tag(data, bt);
  if (tag != -1)
   break;

  sbitmap_prepare_to_wait(bt, ws, &wait, TASK_UNINTERRUPTIBLE);

  tag = __blk_mq_get_tag(data, bt);
  if (tag != -1)
   break;

  bt_prev = bt;
  io_schedule();

  sbitmap_finish_wait(bt, ws, &wait);

  data->ctx = blk_mq_get_ctx(data->q);
  data->hctx = blk_mq_map_queue(data->q, data->cmd_flags,
      data->ctx);
  tags = blk_mq_tags_from_data(data);
  if (data->flags & BLK_MQ_REQ_RESERVED)
   bt = &tags->breserved_tags;
  else
   bt = &tags->bitmap_tags;






  if (bt != bt_prev)
   sbitmap_queue_wake_up(bt_prev);

  ws = bt_wait_ptr(bt, data->hctx);
 } while (1);

 sbitmap_finish_wait(bt, ws, &wait);

found_tag:
 return tag + tag_offset;
}
