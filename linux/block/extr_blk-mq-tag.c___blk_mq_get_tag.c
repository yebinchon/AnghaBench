
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap_queue {int dummy; } ;
struct blk_mq_alloc_data {int flags; scalar_t__ shallow_depth; int hctx; } ;


 int BLK_MQ_REQ_INTERNAL ;
 int __sbitmap_queue_get (struct sbitmap_queue*) ;
 int __sbitmap_queue_get_shallow (struct sbitmap_queue*,scalar_t__) ;
 int hctx_may_queue (int ,struct sbitmap_queue*) ;

__attribute__((used)) static int __blk_mq_get_tag(struct blk_mq_alloc_data *data,
       struct sbitmap_queue *bt)
{
 if (!(data->flags & BLK_MQ_REQ_INTERNAL) &&
     !hctx_may_queue(data->hctx, bt))
  return -1;
 if (data->shallow_depth)
  return __sbitmap_queue_get_shallow(bt, data->shallow_depth);
 else
  return __sbitmap_queue_get(bt);
}
