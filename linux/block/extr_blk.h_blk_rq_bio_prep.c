
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {unsigned int nr_phys_segments; scalar_t__ rq_disk; int ioprio; struct bio* biotail; struct bio* bio; int __data_len; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {scalar_t__ bi_disk; TYPE_1__ bi_iter; } ;


 int bio_prio (struct bio*) ;

__attribute__((used)) static inline void blk_rq_bio_prep(struct request *rq, struct bio *bio,
  unsigned int nr_segs)
{
 rq->nr_phys_segments = nr_segs;
 rq->__data_len = bio->bi_iter.bi_size;
 rq->bio = rq->biotail = bio;
 rq->ioprio = bio_prio(bio);

 if (bio->bi_disk)
  rq->rq_disk = bio->bi_disk;
}
