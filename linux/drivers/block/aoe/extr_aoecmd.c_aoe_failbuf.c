
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bi_size; } ;
struct buf {scalar_t__ nframesout; TYPE_2__* bio; TYPE_1__ iter; } ;
struct aoedev {int dummy; } ;
struct TYPE_4__ {int bi_status; } ;


 int BLK_STS_IOERR ;
 int aoe_end_buf (struct aoedev*,struct buf*) ;

void
aoe_failbuf(struct aoedev *d, struct buf *buf)
{
 if (buf == ((void*)0))
  return;
 buf->iter.bi_size = 0;
 buf->bio->bi_status = BLK_STS_IOERR;
 if (buf->nframesout == 0)
  aoe_end_buf(d, buf);
}
