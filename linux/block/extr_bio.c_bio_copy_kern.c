
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int bounce_gfp; } ;
struct page {int dummy; } ;
struct bio {int bi_end_io; void* bi_private; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 struct bio* ERR_PTR (int ) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 struct page* alloc_page (int) ;
 unsigned int bio_add_pc_page (struct request_queue*,struct bio*,struct page*,unsigned int,int ) ;
 int bio_copy_kern_endio ;
 int bio_copy_kern_endio_read ;
 int bio_free_pages (struct bio*) ;
 struct bio* bio_kmalloc (int,int) ;
 int bio_put (struct bio*) ;
 int memcpy (int ,void*,unsigned int) ;
 int page_address (struct page*) ;

struct bio *bio_copy_kern(struct request_queue *q, void *data, unsigned int len,
     gfp_t gfp_mask, int reading)
{
 unsigned long kaddr = (unsigned long)data;
 unsigned long end = (kaddr + len + PAGE_SIZE - 1) >> PAGE_SHIFT;
 unsigned long start = kaddr >> PAGE_SHIFT;
 struct bio *bio;
 void *p = data;
 int nr_pages = 0;




 if (end < start)
  return ERR_PTR(-EINVAL);

 nr_pages = end - start;
 bio = bio_kmalloc(gfp_mask, nr_pages);
 if (!bio)
  return ERR_PTR(-ENOMEM);

 while (len) {
  struct page *page;
  unsigned int bytes = PAGE_SIZE;

  if (bytes > len)
   bytes = len;

  page = alloc_page(q->bounce_gfp | gfp_mask);
  if (!page)
   goto cleanup;

  if (!reading)
   memcpy(page_address(page), p, bytes);

  if (bio_add_pc_page(q, bio, page, bytes, 0) < bytes)
   break;

  len -= bytes;
  p += bytes;
 }

 if (reading) {
  bio->bi_end_io = bio_copy_kern_endio_read;
  bio->bi_private = data;
 } else {
  bio->bi_end_io = bio_copy_kern_endio;
 }

 return bio;

cleanup:
 bio_free_pages(bio);
 bio_put(bio);
 return ERR_PTR(-ENOMEM);
}
