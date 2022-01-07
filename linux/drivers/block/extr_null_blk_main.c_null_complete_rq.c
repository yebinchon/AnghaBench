
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int blk_mq_rq_to_pdu (struct request*) ;
 int end_cmd (int ) ;

__attribute__((used)) static void null_complete_rq(struct request *rq)
{
 end_cmd(blk_mq_rq_to_pdu(rq));
}
