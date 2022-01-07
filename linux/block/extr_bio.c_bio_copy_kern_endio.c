
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int bio_free_pages (struct bio*) ;
 int bio_put (struct bio*) ;

__attribute__((used)) static void bio_copy_kern_endio(struct bio *bio)
{
 bio_free_pages(bio);
 bio_put(bio);
}
