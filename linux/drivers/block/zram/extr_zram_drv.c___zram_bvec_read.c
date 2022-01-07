
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zram {int mem_pool; int comp; } ;
struct zcomp_strm {int dummy; } ;
struct page {int dummy; } ;
struct bio_vec {unsigned int bv_len; scalar_t__ bv_offset; struct page* bv_page; } ;
struct bio {int dummy; } ;


 unsigned int PAGE_SIZE ;
 int ZRAM_SAME ;
 int ZRAM_WB ;
 int ZS_MM_RO ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,unsigned int) ;
 int pr_err (char*,int,int ) ;
 int read_from_bdev (struct zram*,struct bio_vec*,unsigned long,struct bio*,int) ;
 scalar_t__ unlikely (int) ;
 int zcomp_decompress (struct zcomp_strm*,void*,unsigned int,void*) ;
 struct zcomp_strm* zcomp_stream_get (int ) ;
 int zcomp_stream_put (int ) ;
 int zram_fill_page (void*,unsigned int,unsigned long) ;
 unsigned long zram_get_element (struct zram*,int ) ;
 unsigned long zram_get_handle (struct zram*,int ) ;
 unsigned int zram_get_obj_size (struct zram*,int ) ;
 int zram_slot_lock (struct zram*,int ) ;
 int zram_slot_unlock (struct zram*,int ) ;
 scalar_t__ zram_test_flag (struct zram*,int ,int ) ;
 void* zs_map_object (int ,unsigned long,int ) ;
 int zs_unmap_object (int ,unsigned long) ;

__attribute__((used)) static int __zram_bvec_read(struct zram *zram, struct page *page, u32 index,
    struct bio *bio, bool partial_io)
{
 int ret;
 unsigned long handle;
 unsigned int size;
 void *src, *dst;

 zram_slot_lock(zram, index);
 if (zram_test_flag(zram, index, ZRAM_WB)) {
  struct bio_vec bvec;

  zram_slot_unlock(zram, index);

  bvec.bv_page = page;
  bvec.bv_len = PAGE_SIZE;
  bvec.bv_offset = 0;
  return read_from_bdev(zram, &bvec,
    zram_get_element(zram, index),
    bio, partial_io);
 }

 handle = zram_get_handle(zram, index);
 if (!handle || zram_test_flag(zram, index, ZRAM_SAME)) {
  unsigned long value;
  void *mem;

  value = handle ? zram_get_element(zram, index) : 0;
  mem = kmap_atomic(page);
  zram_fill_page(mem, PAGE_SIZE, value);
  kunmap_atomic(mem);
  zram_slot_unlock(zram, index);
  return 0;
 }

 size = zram_get_obj_size(zram, index);

 src = zs_map_object(zram->mem_pool, handle, ZS_MM_RO);
 if (size == PAGE_SIZE) {
  dst = kmap_atomic(page);
  memcpy(dst, src, PAGE_SIZE);
  kunmap_atomic(dst);
  ret = 0;
 } else {
  struct zcomp_strm *zstrm = zcomp_stream_get(zram->comp);

  dst = kmap_atomic(page);
  ret = zcomp_decompress(zstrm, src, size, dst);
  kunmap_atomic(dst);
  zcomp_stream_put(zram->comp);
 }
 zs_unmap_object(zram->mem_pool, handle);
 zram_slot_unlock(zram, index);


 if (unlikely(ret))
  pr_err("Decompression failed! err=%d, page=%u\n", ret, index);

 return ret;
}
