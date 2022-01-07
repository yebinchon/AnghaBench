
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {int breserved_tags; int bitmap_tags; } ;


 int kfree (struct blk_mq_tags*) ;
 int sbitmap_queue_free (int *) ;

void blk_mq_free_tags(struct blk_mq_tags *tags)
{
 sbitmap_queue_free(&tags->bitmap_tags);
 sbitmap_queue_free(&tags->breserved_tags);
 kfree(tags);
}
