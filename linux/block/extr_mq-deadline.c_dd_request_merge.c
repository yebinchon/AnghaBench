
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {int * sort_list; int front_merges; } ;
struct bio {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 int BUG_ON (int) ;
 int ELEVATOR_FRONT_MERGE ;
 int ELEVATOR_NO_MERGE ;
 size_t bio_data_dir (struct bio*) ;
 scalar_t__ bio_end_sector (struct bio*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ elv_bio_merge_ok (struct request*,struct bio*) ;
 struct request* elv_rb_find (int *,scalar_t__) ;

__attribute__((used)) static int dd_request_merge(struct request_queue *q, struct request **rq,
       struct bio *bio)
{
 struct deadline_data *dd = q->elevator->elevator_data;
 sector_t sector = bio_end_sector(bio);
 struct request *__rq;

 if (!dd->front_merges)
  return ELEVATOR_NO_MERGE;

 __rq = elv_rb_find(&dd->sort_list[bio_data_dir(bio)], sector);
 if (__rq) {
  BUG_ON(sector != blk_rq_pos(__rq));

  if (elv_bio_merge_ok(__rq, bio)) {
   *rq = __rq;
   return ELEVATOR_FRONT_MERGE;
  }
 }

 return ELEVATOR_NO_MERGE;
}
