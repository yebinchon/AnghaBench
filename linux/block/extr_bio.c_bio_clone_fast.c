
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int dummy; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 int __bio_clone_fast (struct bio*,struct bio*) ;
 struct bio* bio_alloc_bioset (int ,int ,struct bio_set*) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_clone (struct bio*,struct bio*,int ) ;
 int bio_put (struct bio*) ;

struct bio *bio_clone_fast(struct bio *bio, gfp_t gfp_mask, struct bio_set *bs)
{
 struct bio *b;

 b = bio_alloc_bioset(gfp_mask, 0, bs);
 if (!b)
  return ((void*)0);

 __bio_clone_fast(b, bio);

 if (bio_integrity(bio)) {
  int ret;

  ret = bio_integrity_clone(b, bio, gfp_mask);

  if (ret < 0) {
   bio_put(b);
   return ((void*)0);
  }
 }

 return b;
}
