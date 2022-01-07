
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int BIO_USER_MAPPED ;
 scalar_t__ bio_flagged (struct bio*,int ) ;
 int bio_uncopy_user (struct bio*) ;
 int bio_unmap_user (struct bio*) ;

__attribute__((used)) static int __blk_rq_unmap_user(struct bio *bio)
{
 int ret = 0;

 if (bio) {
  if (bio_flagged(bio, BIO_USER_MAPPED))
   bio_unmap_user(bio);
  else
   ret = bio_uncopy_user(bio);
 }

 return ret;
}
