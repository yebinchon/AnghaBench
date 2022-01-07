
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 scalar_t__ READ ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_put (struct bio*) ;
 int bio_release_pages (struct bio*,int) ;

void bio_unmap_user(struct bio *bio)
{
 bio_release_pages(bio, bio_data_dir(bio) == READ);
 bio_put(bio);
 bio_put(bio);
}
