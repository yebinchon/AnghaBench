
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;
struct bio {scalar_t__ bi_vcnt; } ;


 int BIO_NO_PAGE_REF ;
 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (scalar_t__) ;
 int __bio_iov_bvec_add_pages (struct bio*,struct iov_iter*) ;
 int __bio_iov_iter_get_pages (struct bio*,struct iov_iter*) ;
 int bio_full (struct bio*,int ) ;
 int bio_set_flag (struct bio*,int ) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 int iov_iter_is_bvec (struct iov_iter*) ;

int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter)
{
 const bool is_bvec = iov_iter_is_bvec(iter);
 int ret;

 if (WARN_ON_ONCE(bio->bi_vcnt))
  return -EINVAL;

 do {
  if (is_bvec)
   ret = __bio_iov_bvec_add_pages(bio, iter);
  else
   ret = __bio_iov_iter_get_pages(bio, iter);
 } while (!ret && iov_iter_count(iter) && !bio_full(bio, 0));

 if (is_bvec)
  bio_set_flag(bio, BIO_NO_PAGE_REF);
 return bio->bi_vcnt ? 0 : ret;
}
