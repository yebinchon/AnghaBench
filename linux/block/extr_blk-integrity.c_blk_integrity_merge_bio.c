
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_integrity_segments; } ;
struct request_queue {TYPE_1__ limits; } ;
struct request {scalar_t__ nr_integrity_segments; struct bio* bio; } ;
struct bio {struct bio* bi_next; } ;
struct TYPE_4__ {scalar_t__ bip_flags; } ;


 TYPE_2__* bio_integrity (struct bio*) ;
 scalar_t__ blk_integrity_rq (struct request*) ;
 int blk_rq_count_integrity_sg (struct request_queue*,struct bio*) ;

bool blk_integrity_merge_bio(struct request_queue *q, struct request *req,
        struct bio *bio)
{
 int nr_integrity_segs;
 struct bio *next = bio->bi_next;

 if (blk_integrity_rq(req) == 0 && bio_integrity(bio) == ((void*)0))
  return 1;

 if (blk_integrity_rq(req) == 0 || bio_integrity(bio) == ((void*)0))
  return 0;

 if (bio_integrity(req->bio)->bip_flags != bio_integrity(bio)->bip_flags)
  return 0;

 bio->bi_next = ((void*)0);
 nr_integrity_segs = blk_rq_count_integrity_sg(q, bio);
 bio->bi_next = next;

 if (req->nr_integrity_segments + nr_integrity_segs >
     q->limits.max_integrity_segments)
  return 0;

 req->nr_integrity_segments += nr_integrity_segs;

 return 1;
}
