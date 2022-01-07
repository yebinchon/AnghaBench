
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {int breserved_tags; int bitmap_tags; } ;


 int sbitmap_queue_wake_all (int *) ;

void blk_mq_tag_wakeup_all(struct blk_mq_tags *tags, bool include_reserve)
{
 sbitmap_queue_wake_all(&tags->bitmap_tags);
 if (include_reserve)
  sbitmap_queue_wake_all(&tags->breserved_tags);
}
