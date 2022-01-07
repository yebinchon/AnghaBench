
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {int dummy; } ;
struct bio {int bi_opf; } ;


 int REQ_IDLE ;


 int REQ_SYNC ;
 int bio_op (struct bio*) ;

__attribute__((used)) static inline bool wbt_should_throttle(struct rq_wb *rwb, struct bio *bio)
{
 switch (bio_op(bio)) {
 case 128:



  if ((bio->bi_opf & (REQ_SYNC | REQ_IDLE)) ==
      (REQ_SYNC | REQ_IDLE))
   return 0;

 case 129:
  return 1;
 default:
  return 0;
 }
}
