
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int __bi_cnt; } ;


 int BIO_BUG_ON (int) ;
 int BIO_REFFED ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_free (struct bio*) ;

void bio_put(struct bio *bio)
{
 if (!bio_flagged(bio, BIO_REFFED))
  bio_free(bio);
 else {
  BIO_BUG_ON(!atomic_read(&bio->__bi_cnt));




  if (atomic_dec_and_test(&bio->__bi_cnt))
   bio_free(bio);
 }
}
