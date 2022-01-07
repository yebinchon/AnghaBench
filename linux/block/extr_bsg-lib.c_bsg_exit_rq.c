
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bsg_job {int reply; } ;
struct blk_mq_tag_set {int dummy; } ;


 struct bsg_job* blk_mq_rq_to_pdu (struct request*) ;
 int kfree (int ) ;

__attribute__((used)) static void bsg_exit_rq(struct blk_mq_tag_set *set, struct request *req,
         unsigned int hctx_idx)
{
 struct bsg_job *job = blk_mq_rq_to_pdu(req);

 kfree(job->reply);
}
