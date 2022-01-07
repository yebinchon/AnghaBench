
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {int bitmap_tags; int breserved_tags; scalar_t__ nr_reserved_tags; } ;
typedef int busy_tag_iter_fn ;


 int bt_tags_for_each (struct blk_mq_tags*,int *,int *,void*,int) ;

__attribute__((used)) static void blk_mq_all_tag_busy_iter(struct blk_mq_tags *tags,
  busy_tag_iter_fn *fn, void *priv)
{
 if (tags->nr_reserved_tags)
  bt_tags_for_each(tags, &tags->breserved_tags, fn, priv, 1);
 bt_tags_for_each(tags, &tags->bitmap_tags, fn, priv, 0);
}
