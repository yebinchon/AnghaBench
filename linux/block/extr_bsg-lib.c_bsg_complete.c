
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bsg_job {int dummy; } ;


 struct bsg_job* blk_mq_rq_to_pdu (struct request*) ;
 int bsg_job_put (struct bsg_job*) ;

__attribute__((used)) static void bsg_complete(struct request *rq)
{
 struct bsg_job *job = blk_mq_rq_to_pdu(rq);

 bsg_job_put(job);
}
