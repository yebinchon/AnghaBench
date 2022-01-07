
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
typedef int gfp_t ;


 struct bio* bio_alloc (int ,unsigned int) ;
 int bio_chain (struct bio*,struct bio*) ;
 int submit_bio (struct bio*) ;

struct bio *blk_next_bio(struct bio *bio, unsigned int nr_pages, gfp_t gfp)
{
 struct bio *new = bio_alloc(gfp, nr_pages);

 if (bio) {
  bio_chain(bio, new);
  submit_bio(bio);
 }

 return new;
}
