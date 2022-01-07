
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct bio {int dummy; } ;





 struct request* attempt_back_merge (struct request_queue*,struct request*) ;
 struct request* attempt_front_merge (struct request_queue*,struct request*) ;
 int bio_attempt_back_merge (struct request*,struct bio*,unsigned int) ;
 int bio_attempt_discard_merge (struct request_queue*,struct request*,struct bio*) ;
 int bio_attempt_front_merge (struct request*,struct bio*,unsigned int) ;
 int blk_mq_sched_allow_merge (struct request_queue*,struct request*,struct bio*) ;
 int elv_merge (struct request_queue*,struct request**,struct bio*) ;
 int elv_merged_request (struct request_queue*,struct request*,int const) ;

bool blk_mq_sched_try_merge(struct request_queue *q, struct bio *bio,
  unsigned int nr_segs, struct request **merged_request)
{
 struct request *rq;

 switch (elv_merge(q, &rq, bio)) {
 case 130:
  if (!blk_mq_sched_allow_merge(q, rq, bio))
   return 0;
  if (!bio_attempt_back_merge(rq, bio, nr_segs))
   return 0;
  *merged_request = attempt_back_merge(q, rq);
  if (!*merged_request)
   elv_merged_request(q, rq, 130);
  return 1;
 case 128:
  if (!blk_mq_sched_allow_merge(q, rq, bio))
   return 0;
  if (!bio_attempt_front_merge(rq, bio, nr_segs))
   return 0;
  *merged_request = attempt_front_merge(q, rq);
  if (!*merged_request)
   elv_merged_request(q, rq, 128);
  return 1;
 case 129:
  return bio_attempt_discard_merge(q, rq, bio);
 default:
  return 0;
 }
}
