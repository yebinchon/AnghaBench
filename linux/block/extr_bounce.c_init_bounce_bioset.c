
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOSET_NEED_BVECS ;
 int BIO_POOL_SIZE ;
 int BUG_ON (int) ;
 int bioset_init (int *,int ,int ,int ) ;
 scalar_t__ bioset_integrity_create (int *,int ) ;
 int bounce_bio_set ;
 int bounce_bio_split ;

__attribute__((used)) static void init_bounce_bioset(void)
{
 static bool bounce_bs_setup;
 int ret;

 if (bounce_bs_setup)
  return;

 ret = bioset_init(&bounce_bio_set, BIO_POOL_SIZE, 0, BIOSET_NEED_BVECS);
 BUG_ON(ret);
 if (bioset_integrity_create(&bounce_bio_set, BIO_POOL_SIZE))
  BUG_ON(1);

 ret = bioset_init(&bounce_bio_split, BIO_POOL_SIZE, 0, 0);
 BUG_ON(ret);
 bounce_bs_setup = 1;
}
