
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct bio {struct bio* bi_next; int bi_status; } ;
struct TYPE_2__ {struct bio* nxbio; struct request* rq; int buf; } ;
struct aoedev {TYPE_1__ ip; } ;
struct aoe_req {int nr_bios; } ;


 int BLK_STS_IOERR ;
 int aoe_end_request (struct aoedev*,struct request*,int ) ;
 int aoe_failbuf (struct aoedev*,int ) ;
 struct aoe_req* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static void
aoe_failip(struct aoedev *d)
{
 struct request *rq;
 struct aoe_req *req;
 struct bio *bio;

 aoe_failbuf(d, d->ip.buf);
 rq = d->ip.rq;
 if (rq == ((void*)0))
  return;

 req = blk_mq_rq_to_pdu(rq);
 while ((bio = d->ip.nxbio)) {
  bio->bi_status = BLK_STS_IOERR;
  d->ip.nxbio = bio->bi_next;
  req->nr_bios--;
 }

 if (!req->nr_bios)
  aoe_end_request(d, rq, 0);
}
