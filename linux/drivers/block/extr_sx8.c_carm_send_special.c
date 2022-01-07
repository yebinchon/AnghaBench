
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct request {int tag; } ;
struct carm_request {scalar_t__ msg_bucket; int msg_subtype; int msg_type; } ;
struct carm_msg_ioctl {int subtype; int type; } ;
struct carm_host {int oob_q; } ;
typedef unsigned int (* carm_sspc_t ) (struct carm_host*,int ,void*) ;


 int BUG_ON (int) ;
 int DPRINTK (char*,int ) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct request*) ;
 int REQ_OP_DRV_OUT ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int,int *) ;
 struct request* blk_mq_alloc_request (int ,int ,int ) ;
 struct carm_request* blk_mq_rq_to_pdu (struct request*) ;
 int carm_lookup_bucket (unsigned int) ;
 void* carm_ref_msg (struct carm_host*,int ) ;

__attribute__((used)) static int carm_send_special (struct carm_host *host, carm_sspc_t func)
{
 struct request *rq;
 struct carm_request *crq;
 struct carm_msg_ioctl *ioc;
 void *mem;
 unsigned int msg_size;
 int rc;

 rq = blk_mq_alloc_request(host->oob_q, REQ_OP_DRV_OUT, 0);
 if (IS_ERR(rq))
  return -ENOMEM;
 crq = blk_mq_rq_to_pdu(rq);

 mem = carm_ref_msg(host, rq->tag);

 msg_size = func(host, rq->tag, mem);

 ioc = mem;
 crq->msg_type = ioc->type;
 crq->msg_subtype = ioc->subtype;
 rc = carm_lookup_bucket(msg_size);
 BUG_ON(rc < 0);
 crq->msg_bucket = (u32) rc;

 DPRINTK("blk_execute_rq_nowait, tag == %u\n", rq->tag);
 blk_execute_rq_nowait(host->oob_q, ((void*)0), rq, 1, ((void*)0));

 return 0;
}
