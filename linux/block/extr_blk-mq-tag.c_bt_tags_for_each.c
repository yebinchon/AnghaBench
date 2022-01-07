
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap_queue {int sb; } ;
struct bt_tags_iter_data {void* data; int reserved; int * fn; struct blk_mq_tags* tags; } ;
struct blk_mq_tags {scalar_t__ rqs; } ;
typedef int busy_tag_iter_fn ;


 int bt_tags_iter ;
 int sbitmap_for_each_set (int *,int ,struct bt_tags_iter_data*) ;

__attribute__((used)) static void bt_tags_for_each(struct blk_mq_tags *tags, struct sbitmap_queue *bt,
        busy_tag_iter_fn *fn, void *data, bool reserved)
{
 struct bt_tags_iter_data iter_data = {
  .tags = tags,
  .fn = fn,
  .data = data,
  .reserved = reserved,
 };

 if (tags->rqs)
  sbitmap_for_each_set(&bt->sb, bt_tags_iter, &iter_data);
}
