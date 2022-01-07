
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int blk_mq_end_request (struct request*,int ) ;
 TYPE_1__* blkif_req (struct request*) ;

__attribute__((used)) static void blkif_complete_rq(struct request *rq)
{
 blk_mq_end_request(rq, blkif_req(rq)->error);
}
