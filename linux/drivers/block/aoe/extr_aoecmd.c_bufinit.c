
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct buf {int iter; struct bio* bio; struct request* rq; } ;
struct bio {int bi_iter; } ;


 int memset (struct buf*,int ,int) ;

__attribute__((used)) static void
bufinit(struct buf *buf, struct request *rq, struct bio *bio)
{
 memset(buf, 0, sizeof(*buf));
 buf->rq = rq;
 buf->bio = bio;
 buf->iter = bio->bi_iter;
}
