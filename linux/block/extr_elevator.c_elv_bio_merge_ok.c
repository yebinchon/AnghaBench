
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bio {int dummy; } ;


 int blk_rq_merge_ok (struct request*,struct bio*) ;
 int elv_iosched_allow_bio_merge (struct request*,struct bio*) ;

bool elv_bio_merge_ok(struct request *rq, struct bio *bio)
{
 if (!blk_rq_merge_ok(rq, bio))
  return 0;

 if (!elv_iosched_allow_bio_merge(rq, bio))
  return 0;

 return 1;
}
