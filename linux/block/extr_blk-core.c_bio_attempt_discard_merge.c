
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {unsigned short nr_phys_segments; int __data_len; struct bio* biotail; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {TYPE_1__ bi_iter; struct bio* bi_next; } ;


 scalar_t__ bio_sectors (struct bio*) ;
 int blk_account_io_start (struct request*,int) ;
 scalar_t__ blk_rq_get_max_sectors (struct request*,int ) ;
 unsigned short blk_rq_nr_discard_segments (struct request*) ;
 int blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 unsigned short queue_max_discard_segments (struct request_queue*) ;
 int req_set_nomerge (struct request_queue*,struct request*) ;
 int rq_qos_merge (struct request_queue*,struct request*,struct bio*) ;

bool bio_attempt_discard_merge(struct request_queue *q, struct request *req,
  struct bio *bio)
{
 unsigned short segments = blk_rq_nr_discard_segments(req);

 if (segments >= queue_max_discard_segments(q))
  goto no_merge;
 if (blk_rq_sectors(req) + bio_sectors(bio) >
     blk_rq_get_max_sectors(req, blk_rq_pos(req)))
  goto no_merge;

 rq_qos_merge(q, req, bio);

 req->biotail->bi_next = bio;
 req->biotail = bio;
 req->__data_len += bio->bi_iter.bi_size;
 req->nr_phys_segments = segments + 1;

 blk_account_io_start(req, 0);
 return 1;
no_merge:
 req_set_nomerge(q, req);
 return 0;
}
