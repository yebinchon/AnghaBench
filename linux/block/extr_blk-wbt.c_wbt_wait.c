
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {int cb; int last_issue; } ;
struct rq_qos {int dummy; } ;
struct bio {int bi_opf; } ;
typedef enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;


 struct rq_wb* RQWB (struct rq_qos*) ;
 int WBT_READ ;
 int WBT_TRACKED ;
 int __wbt_wait (struct rq_wb*,int,int ) ;
 int bio_to_wbt_flags (struct rq_wb*,struct bio*) ;
 int blk_stat_is_active (int ) ;
 int rwb_arm_timer (struct rq_wb*) ;
 int wb_timestamp (struct rq_wb*,int *) ;

__attribute__((used)) static void wbt_wait(struct rq_qos *rqos, struct bio *bio)
{
 struct rq_wb *rwb = RQWB(rqos);
 enum wbt_flags flags;

 flags = bio_to_wbt_flags(rwb, bio);
 if (!(flags & WBT_TRACKED)) {
  if (flags & WBT_READ)
   wb_timestamp(rwb, &rwb->last_issue);
  return;
 }

 __wbt_wait(rwb, flags, bio->bi_opf);

 if (!blk_stat_is_active(rwb->cb))
  rwb_arm_timer(rwb);
}
