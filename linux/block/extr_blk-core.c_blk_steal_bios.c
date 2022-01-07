
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {scalar_t__ __data_len; TYPE_1__* biotail; int * bio; } ;
struct bio_list {TYPE_1__* tail; int * head; } ;
struct TYPE_2__ {int * bi_next; } ;



void blk_steal_bios(struct bio_list *list, struct request *rq)
{
 if (rq->bio) {
  if (list->tail)
   list->tail->bi_next = rq->bio;
  else
   list->head = rq->bio;
  list->tail = rq->biotail;

  rq->bio = ((void*)0);
  rq->biotail = ((void*)0);
 }

 rq->__data_len = 0;
}
