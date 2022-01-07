
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int bio_split; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; int bi_opf; } ;


 int BIO_QUEUE_ENTERED ;
 int REQ_NOMERGE ;




 int bio_chain (struct bio*,struct bio*) ;
 int bio_op (struct bio*) ;
 int bio_set_flag (struct bio*,int ) ;
 struct bio* blk_bio_discard_split (struct request_queue*,struct bio*,int *,unsigned int*) ;
 struct bio* blk_bio_segment_split (struct request_queue*,struct bio*,int *,unsigned int*) ;
 struct bio* blk_bio_write_same_split (struct request_queue*,struct bio*,int *,unsigned int*) ;
 struct bio* blk_bio_write_zeroes_split (struct request_queue*,struct bio*,int *,unsigned int*) ;
 int generic_make_request (struct bio*) ;
 int trace_block_split (struct request_queue*,struct bio*,int ) ;

void __blk_queue_split(struct request_queue *q, struct bio **bio,
  unsigned int *nr_segs)
{
 struct bio *split;

 switch (bio_op(*bio)) {
 case 131:
 case 130:
  split = blk_bio_discard_split(q, *bio, &q->bio_split, nr_segs);
  break;
 case 128:
  split = blk_bio_write_zeroes_split(q, *bio, &q->bio_split,
    nr_segs);
  break;
 case 129:
  split = blk_bio_write_same_split(q, *bio, &q->bio_split,
    nr_segs);
  break;
 default:
  split = blk_bio_segment_split(q, *bio, &q->bio_split, nr_segs);
  break;
 }

 if (split) {

  split->bi_opf |= REQ_NOMERGE;
  bio_set_flag(*bio, BIO_QUEUE_ENTERED);

  bio_chain(split, *bio);
  trace_block_split(q, split, (*bio)->bi_iter.bi_sector);
  generic_make_request(*bio);
  *bio = split;
 }
}
