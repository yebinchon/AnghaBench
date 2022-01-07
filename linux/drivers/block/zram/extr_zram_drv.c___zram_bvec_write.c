
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pages_stored; int huge_pages; int compr_data_size; int writestall; int same_pages; } ;
struct zram {unsigned long limit_pages; TYPE_1__ stats; int mem_pool; int comp; } ;
struct zcomp_strm {void* buffer; } ;
struct page {int dummy; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int dummy; } ;
typedef enum zram_pageflags { ____Placeholder_zram_pageflags } zram_pageflags ;


 int ENOMEM ;
 int GFP_NOIO ;
 unsigned int PAGE_SIZE ;
 int ZRAM_HUGE ;
 int ZRAM_SAME ;
 int ZS_MM_WO ;
 int __GFP_HIGHMEM ;
 int __GFP_KSWAPD_RECLAIM ;
 int __GFP_MOVABLE ;
 int __GFP_NOWARN ;
 int atomic64_add (unsigned int,int *) ;
 int atomic64_inc (int *) ;
 unsigned int huge_class_size ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,unsigned int) ;
 scalar_t__ page_same_filled (void*,unsigned long*) ;
 int pr_err (char*,int) ;
 scalar_t__ unlikely (int) ;
 int update_used_max (struct zram*,unsigned long) ;
 int zcomp_compress (struct zcomp_strm*,void*,unsigned int*) ;
 struct zcomp_strm* zcomp_stream_get (int ) ;
 int zcomp_stream_put (int ) ;
 int zram_free_page (struct zram*,int ) ;
 int zram_set_element (struct zram*,int ,unsigned long) ;
 int zram_set_flag (struct zram*,int ,int) ;
 int zram_set_handle (struct zram*,int ,unsigned long) ;
 int zram_set_obj_size (struct zram*,int ,unsigned int) ;
 int zram_slot_lock (struct zram*,int ) ;
 int zram_slot_unlock (struct zram*,int ) ;
 int zs_free (int ,unsigned long) ;
 unsigned long zs_get_total_pages (int ) ;
 unsigned long zs_malloc (int ,unsigned int,int) ;
 void* zs_map_object (int ,unsigned long,int ) ;
 int zs_unmap_object (int ,unsigned long) ;

__attribute__((used)) static int __zram_bvec_write(struct zram *zram, struct bio_vec *bvec,
    u32 index, struct bio *bio)
{
 int ret = 0;
 unsigned long alloced_pages;
 unsigned long handle = 0;
 unsigned int comp_len = 0;
 void *src, *dst, *mem;
 struct zcomp_strm *zstrm;
 struct page *page = bvec->bv_page;
 unsigned long element = 0;
 enum zram_pageflags flags = 0;

 mem = kmap_atomic(page);
 if (page_same_filled(mem, &element)) {
  kunmap_atomic(mem);

  flags = ZRAM_SAME;
  atomic64_inc(&zram->stats.same_pages);
  goto out;
 }
 kunmap_atomic(mem);

compress_again:
 zstrm = zcomp_stream_get(zram->comp);
 src = kmap_atomic(page);
 ret = zcomp_compress(zstrm, src, &comp_len);
 kunmap_atomic(src);

 if (unlikely(ret)) {
  zcomp_stream_put(zram->comp);
  pr_err("Compression failed! err=%d\n", ret);
  zs_free(zram->mem_pool, handle);
  return ret;
 }

 if (comp_len >= huge_class_size)
  comp_len = PAGE_SIZE;
 if (!handle)
  handle = zs_malloc(zram->mem_pool, comp_len,
    __GFP_KSWAPD_RECLAIM |
    __GFP_NOWARN |
    __GFP_HIGHMEM |
    __GFP_MOVABLE);
 if (!handle) {
  zcomp_stream_put(zram->comp);
  atomic64_inc(&zram->stats.writestall);
  handle = zs_malloc(zram->mem_pool, comp_len,
    GFP_NOIO | __GFP_HIGHMEM |
    __GFP_MOVABLE);
  if (handle)
   goto compress_again;
  return -ENOMEM;
 }

 alloced_pages = zs_get_total_pages(zram->mem_pool);
 update_used_max(zram, alloced_pages);

 if (zram->limit_pages && alloced_pages > zram->limit_pages) {
  zcomp_stream_put(zram->comp);
  zs_free(zram->mem_pool, handle);
  return -ENOMEM;
 }

 dst = zs_map_object(zram->mem_pool, handle, ZS_MM_WO);

 src = zstrm->buffer;
 if (comp_len == PAGE_SIZE)
  src = kmap_atomic(page);
 memcpy(dst, src, comp_len);
 if (comp_len == PAGE_SIZE)
  kunmap_atomic(src);

 zcomp_stream_put(zram->comp);
 zs_unmap_object(zram->mem_pool, handle);
 atomic64_add(comp_len, &zram->stats.compr_data_size);
out:




 zram_slot_lock(zram, index);
 zram_free_page(zram, index);

 if (comp_len == PAGE_SIZE) {
  zram_set_flag(zram, index, ZRAM_HUGE);
  atomic64_inc(&zram->stats.huge_pages);
 }

 if (flags) {
  zram_set_flag(zram, index, flags);
  zram_set_element(zram, index, element);
 } else {
  zram_set_handle(zram, index, handle);
  zram_set_obj_size(zram, index, comp_len);
 }
 zram_slot_unlock(zram, index);


 atomic64_inc(&zram->stats.pages_stored);
 return ret;
}
