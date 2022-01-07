
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int bio_advance (struct bio*,int) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_trim (struct bio*) ;

void bio_trim(struct bio *bio, int offset, int size)
{




 size <<= 9;
 if (offset == 0 && size == bio->bi_iter.bi_size)
  return;

 bio_advance(bio, offset << 9);
 bio->bi_iter.bi_size = size;

 if (bio_integrity(bio))
  bio_integrity_trim(bio);

}
