
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int rq_flags; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {TYPE_1__ bi_iter; scalar_t__ bi_status; } ;
typedef scalar_t__ blk_status_t ;


 int BIO_QUIET ;
 int RQF_FLUSH_SEQ ;
 int RQF_QUIET ;
 int bio_advance (struct bio*,unsigned int) ;
 int bio_endio (struct bio*) ;
 int bio_set_flag (struct bio*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void req_bio_endio(struct request *rq, struct bio *bio,
     unsigned int nbytes, blk_status_t error)
{
 if (error)
  bio->bi_status = error;

 if (unlikely(rq->rq_flags & RQF_QUIET))
  bio_set_flag(bio, BIO_QUIET);

 bio_advance(bio, nbytes);


 if (bio->bi_iter.bi_size == 0 && !(rq->rq_flags & RQF_FLUSH_SEQ))
  bio_endio(bio);
}
