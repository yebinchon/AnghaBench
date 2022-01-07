
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int nr_hw_queues; scalar_t__* tags; } ;
typedef int busy_tag_iter_fn ;


 int blk_mq_all_tag_busy_iter (scalar_t__,int *,void*) ;

void blk_mq_tagset_busy_iter(struct blk_mq_tag_set *tagset,
  busy_tag_iter_fn *fn, void *priv)
{
 int i;

 for (i = 0; i < tagset->nr_hw_queues; i++) {
  if (tagset->tags && tagset->tags[i])
   blk_mq_all_tag_busy_iter(tagset->tags[i], fn, priv);
 }
}
