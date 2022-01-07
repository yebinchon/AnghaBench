
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int __bi_remaining; } ;


 int BIO_CHAIN ;
 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int bio_clear_flag (struct bio*,int ) ;
 int bio_flagged (struct bio*,int ) ;

__attribute__((used)) static inline bool bio_remaining_done(struct bio *bio)
{




 if (!bio_flagged(bio, BIO_CHAIN))
  return 1;

 BUG_ON(atomic_read(&bio->__bi_remaining) <= 0);

 if (atomic_dec_and_test(&bio->__bi_remaining)) {
  bio_clear_flag(bio, BIO_CHAIN);
  return 1;
 }

 return 0;
}
