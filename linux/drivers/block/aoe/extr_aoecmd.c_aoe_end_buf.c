
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct buf {struct request* rq; } ;
struct TYPE_2__ {struct buf* buf; } ;
struct aoedev {int bufpool; TYPE_1__ ip; } ;
struct aoe_req {scalar_t__ nr_bios; } ;


 int aoe_end_request (struct aoedev*,struct request*,int ) ;
 struct aoe_req* blk_mq_rq_to_pdu (struct request*) ;
 int mempool_free (struct buf*,int ) ;

__attribute__((used)) static void
aoe_end_buf(struct aoedev *d, struct buf *buf)
{
 struct request *rq = buf->rq;
 struct aoe_req *req = blk_mq_rq_to_pdu(rq);

 if (buf == d->ip.buf)
  d->ip.buf = ((void*)0);
 mempool_free(buf, d->bufpool);
 if (--req->nr_bios == 0)
  aoe_end_request(d, rq, 0);
}
