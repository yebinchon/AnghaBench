
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int dummy; } ;
struct bio_integrity_payload {int bip_vcnt; int bip_iter; int bip_vec; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 scalar_t__ IS_ERR (struct bio_integrity_payload*) ;
 int PTR_ERR (struct bio_integrity_payload*) ;
 struct bio_integrity_payload* bio_integrity (struct bio*) ;
 struct bio_integrity_payload* bio_integrity_alloc (struct bio*,int ,int) ;
 int memcpy (int ,int ,int) ;

int bio_integrity_clone(struct bio *bio, struct bio *bio_src,
   gfp_t gfp_mask)
{
 struct bio_integrity_payload *bip_src = bio_integrity(bio_src);
 struct bio_integrity_payload *bip;

 BUG_ON(bip_src == ((void*)0));

 bip = bio_integrity_alloc(bio, gfp_mask, bip_src->bip_vcnt);
 if (IS_ERR(bip))
  return PTR_ERR(bip);

 memcpy(bip->bip_vec, bip_src->bip_vec,
        bip_src->bip_vcnt * sizeof(struct bio_vec));

 bip->bip_vcnt = bip_src->bip_vcnt;
 bip->bip_iter = bip_src->bip_iter;

 return 0;
}
