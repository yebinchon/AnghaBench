
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_set {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int gfp_t ;


 int BIO_TRACE_COMPLETION ;
 int BUG_ON (int) ;
 int bio_advance (struct bio*,int) ;
 struct bio* bio_clone_fast (struct bio*,int ,struct bio_set*) ;
 scalar_t__ bio_flagged (struct bio*,int ) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_trim (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int bio_set_flag (struct bio*,int ) ;

struct bio *bio_split(struct bio *bio, int sectors,
        gfp_t gfp, struct bio_set *bs)
{
 struct bio *split;

 BUG_ON(sectors <= 0);
 BUG_ON(sectors >= bio_sectors(bio));

 split = bio_clone_fast(bio, gfp, bs);
 if (!split)
  return ((void*)0);

 split->bi_iter.bi_size = sectors << 9;

 if (bio_integrity(split))
  bio_integrity_trim(split);

 bio_advance(bio, split->bi_iter.bi_size);

 if (bio_flagged(bio, BIO_TRACE_COMPLETION))
  bio_set_flag(split, BIO_TRACE_COMPLETION);

 return split;
}
