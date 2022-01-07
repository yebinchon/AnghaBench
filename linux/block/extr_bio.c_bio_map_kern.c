
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct bio {int bi_end_io; void* bi_private; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 struct bio* ERR_PTR (int ) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned int bio_add_pc_page (struct request_queue*,struct bio*,struct page*,unsigned int,int) ;
 struct bio* bio_kmalloc (int ,int const) ;
 int bio_map_kern_endio ;
 int bio_put (struct bio*) ;
 int flush_kernel_vmap_range (void*,unsigned int) ;
 int is_vmalloc_addr (void*) ;
 int offset_in_page (unsigned long) ;
 struct page* virt_to_page (void*) ;
 struct page* vmalloc_to_page (void*) ;

struct bio *bio_map_kern(struct request_queue *q, void *data, unsigned int len,
    gfp_t gfp_mask)
{
 unsigned long kaddr = (unsigned long)data;
 unsigned long end = (kaddr + len + PAGE_SIZE - 1) >> PAGE_SHIFT;
 unsigned long start = kaddr >> PAGE_SHIFT;
 const int nr_pages = end - start;
 bool is_vmalloc = is_vmalloc_addr(data);
 struct page *page;
 int offset, i;
 struct bio *bio;

 bio = bio_kmalloc(gfp_mask, nr_pages);
 if (!bio)
  return ERR_PTR(-ENOMEM);

 if (is_vmalloc) {
  flush_kernel_vmap_range(data, len);
  bio->bi_private = data;
 }

 offset = offset_in_page(kaddr);
 for (i = 0; i < nr_pages; i++) {
  unsigned int bytes = PAGE_SIZE - offset;

  if (len <= 0)
   break;

  if (bytes > len)
   bytes = len;

  if (!is_vmalloc)
   page = virt_to_page(data);
  else
   page = vmalloc_to_page(data);
  if (bio_add_pc_page(q, bio, page, bytes,
        offset) < bytes) {

   bio_put(bio);
   return ERR_PTR(-EINVAL);
  }

  data += bytes;
  len -= bytes;
  offset = 0;
 }

 bio->bi_end_io = bio_map_kern_endio;
 return bio;
}
