
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct iov_iter {int dummy; } ;
struct bio {int dummy; } ;
typedef int ssize_t ;
typedef int gfp_t ;


 int BIO_MAX_PAGES ;
 int BIO_USER_MAPPED ;
 int DIV_ROUND_UP (size_t,size_t) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct bio* ERR_PTR (int) ;
 int LONG_MAX ;
 size_t PAGE_SIZE ;
 int __bio_add_pc_page (struct request_queue*,struct bio*,struct page*,unsigned int,size_t,int*) ;
 int bio_get (struct bio*) ;
 struct bio* bio_kmalloc (int ,int ) ;
 int bio_put (struct bio*) ;
 int bio_release_pages (struct bio*,int) ;
 int bio_set_flag (struct bio*,int ) ;
 int iov_iter_advance (struct iov_iter*,size_t) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 int iov_iter_get_pages_alloc (struct iov_iter*,struct page***,int ,size_t*) ;
 int iov_iter_npages (struct iov_iter*,int ) ;
 int kvfree (struct page**) ;
 int put_page (struct page*) ;
 size_t queue_dma_alignment (struct request_queue*) ;
 scalar_t__ unlikely (size_t) ;

struct bio *bio_map_user_iov(struct request_queue *q,
        struct iov_iter *iter,
        gfp_t gfp_mask)
{
 int j;
 struct bio *bio;
 int ret;

 if (!iov_iter_count(iter))
  return ERR_PTR(-EINVAL);

 bio = bio_kmalloc(gfp_mask, iov_iter_npages(iter, BIO_MAX_PAGES));
 if (!bio)
  return ERR_PTR(-ENOMEM);

 while (iov_iter_count(iter)) {
  struct page **pages;
  ssize_t bytes;
  size_t offs, added = 0;
  int npages;

  bytes = iov_iter_get_pages_alloc(iter, &pages, LONG_MAX, &offs);
  if (unlikely(bytes <= 0)) {
   ret = bytes ? bytes : -EFAULT;
   goto out_unmap;
  }

  npages = DIV_ROUND_UP(offs + bytes, PAGE_SIZE);

  if (unlikely(offs & queue_dma_alignment(q))) {
   ret = -EINVAL;
   j = 0;
  } else {
   for (j = 0; j < npages; j++) {
    struct page *page = pages[j];
    unsigned int n = PAGE_SIZE - offs;
    bool same_page = 0;

    if (n > bytes)
     n = bytes;

    if (!__bio_add_pc_page(q, bio, page, n, offs,
      &same_page)) {
     if (same_page)
      put_page(page);
     break;
    }

    added += n;
    bytes -= n;
    offs = 0;
   }
   iov_iter_advance(iter, added);
  }



  while (j < npages)
   put_page(pages[j++]);
  kvfree(pages);

  if (bytes)
   break;
 }

 bio_set_flag(bio, BIO_USER_MAPPED);







 bio_get(bio);
 return bio;

 out_unmap:
 bio_release_pages(bio, 0);
 bio_put(bio);
 return ERR_PTR(ret);
}
