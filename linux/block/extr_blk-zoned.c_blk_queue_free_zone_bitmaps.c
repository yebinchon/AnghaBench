
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * seq_zones_wlock; int * seq_zones_bitmap; } ;


 int kfree (int *) ;

void blk_queue_free_zone_bitmaps(struct request_queue *q)
{
 kfree(q->seq_zones_bitmap);
 q->seq_zones_bitmap = ((void*)0);
 kfree(q->seq_zones_wlock);
 q->seq_zones_wlock = ((void*)0);
}
