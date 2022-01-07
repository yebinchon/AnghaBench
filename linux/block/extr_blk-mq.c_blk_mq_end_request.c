
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
typedef int blk_status_t ;


 int BUG () ;
 int __blk_mq_end_request (struct request*,int ) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ blk_update_request (struct request*,int ,int ) ;

void blk_mq_end_request(struct request *rq, blk_status_t error)
{
 if (blk_update_request(rq, error, blk_rq_bytes(rq)))
  BUG();
 __blk_mq_end_request(rq, error);
}
