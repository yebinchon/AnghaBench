
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_request_context {int status; } ;
struct request {int dummy; } ;


 int blk_mq_end_request (struct request*,int ) ;
 struct skd_request_context* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static void skd_complete_rq(struct request *req)
{
 struct skd_request_context *skreq = blk_mq_rq_to_pdu(req);

 blk_mq_end_request(req, skreq->status);
}
