
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_map_data {scalar_t__ is_our_pages; int iter; } ;
struct bio {struct bio_map_data* bi_private; } ;
struct TYPE_2__ {int mm; } ;


 int BIO_NULL_MAPPED ;
 int EINTR ;
 scalar_t__ READ ;
 int bio_copy_to_iter (struct bio*,int ) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_free_pages (struct bio*) ;
 int bio_put (struct bio*) ;
 TYPE_1__* current ;
 int kfree (struct bio_map_data*) ;

int bio_uncopy_user(struct bio *bio)
{
 struct bio_map_data *bmd = bio->bi_private;
 int ret = 0;

 if (!bio_flagged(bio, BIO_NULL_MAPPED)) {





  if (!current->mm)
   ret = -EINTR;
  else if (bio_data_dir(bio) == READ)
   ret = bio_copy_to_iter(bio, bmd->iter);
  if (bmd->is_our_pages)
   bio_free_pages(bio);
 }
 kfree(bmd);
 bio_put(bio);
 return ret;
}
