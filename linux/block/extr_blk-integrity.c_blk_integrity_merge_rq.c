
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_integrity_segments; } ;
struct request_queue {TYPE_1__ limits; } ;
struct request {scalar_t__ nr_integrity_segments; int bio; } ;
struct TYPE_4__ {scalar_t__ bip_flags; } ;


 TYPE_2__* bio_integrity (int ) ;
 scalar_t__ blk_integrity_rq (struct request*) ;
 scalar_t__ integrity_req_gap_back_merge (struct request*,int ) ;

bool blk_integrity_merge_rq(struct request_queue *q, struct request *req,
       struct request *next)
{
 if (blk_integrity_rq(req) == 0 && blk_integrity_rq(next) == 0)
  return 1;

 if (blk_integrity_rq(req) == 0 || blk_integrity_rq(next) == 0)
  return 0;

 if (bio_integrity(req->bio)->bip_flags !=
     bio_integrity(next->bio)->bip_flags)
  return 0;

 if (req->nr_integrity_segments + next->nr_integrity_segments >
     q->limits.max_integrity_segments)
  return 0;

 if (integrity_req_gap_back_merge(req, next->bio))
  return 0;

 return 1;
}
