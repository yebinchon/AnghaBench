
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {unsigned long bi_flags; int __bi_remaining; } ;


 unsigned long BIO_RESET_BITS ;
 int BIO_RESET_BYTES ;
 int atomic_set (int *,int) ;
 int bio_uninit (struct bio*) ;
 int memset (struct bio*,int ,int ) ;

void bio_reset(struct bio *bio)
{
 unsigned long flags = bio->bi_flags & (~0UL << BIO_RESET_BITS);

 bio_uninit(bio);

 memset(bio, 0, BIO_RESET_BYTES);
 bio->bi_flags = flags;
 atomic_set(&bio->__bi_remaining, 1);
}
