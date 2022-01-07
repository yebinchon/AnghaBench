
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {int dummy; } ;
struct rq_qos {int dummy; } ;
struct request {int wbt_flags; } ;
struct bio {int dummy; } ;


 struct rq_wb* RQWB (struct rq_qos*) ;
 int bio_to_wbt_flags (struct rq_wb*,struct bio*) ;

__attribute__((used)) static void wbt_track(struct rq_qos *rqos, struct request *rq, struct bio *bio)
{
 struct rq_wb *rwb = RQWB(rqos);
 rq->wbt_flags |= bio_to_wbt_flags(rwb, bio);
}
