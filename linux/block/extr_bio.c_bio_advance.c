
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_iter; } ;


 int bio_advance_iter (struct bio*,int *,unsigned int) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_advance (struct bio*,unsigned int) ;

void bio_advance(struct bio *bio, unsigned bytes)
{
 if (bio_integrity(bio))
  bio_integrity_advance(bio, bytes);

 bio_advance_iter(bio, &bio->bi_iter, bytes);
}
