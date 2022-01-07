
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct page {int dummy; } ;
struct drbd_device {int ldev; struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {scalar_t__ bm_dev_capacity; unsigned long bm_number_of_pages; unsigned long bm_words; unsigned long bm_set; unsigned long bm_bits; int bm_lock; struct page** bm_pages; } ;
typedef scalar_t__ sector_t ;


 unsigned long ALIGN (unsigned long,int) ;
 int BM_LOCKED_MASK ;
 int BM_SECT_PER_BIT ;
 unsigned long BM_SECT_TO_BIT (unsigned long) ;
 int DRBD_FAULT_BM_ALLOC ;
 int D_ASSERT (struct drbd_device*,int ) ;
 int ENOMEM ;
 int ENOSPC ;
 unsigned long LN2_BPL ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int bm_clear_surplus (struct drbd_bitmap*) ;
 unsigned long bm_count_bits (struct drbd_bitmap*) ;
 int bm_free_pages (struct page**,unsigned long) ;
 int bm_memset (struct drbd_bitmap*,unsigned long,int,unsigned long) ;
 struct page** bm_realloc_pages (struct drbd_bitmap*,unsigned long) ;
 int bm_set_surplus (struct drbd_bitmap*) ;
 int bm_vk_free (struct page**) ;
 int drbd_bm_lock (struct drbd_device*,char*,int ) ;
 int drbd_bm_unlock (struct drbd_device*) ;
 int drbd_info (struct drbd_device*,char*,unsigned long,...) ;
 scalar_t__ drbd_insert_fault (struct drbd_device*,int ) ;
 unsigned long drbd_md_on_disk_bits (int ) ;
 int expect (struct drbd_bitmap*) ;
 scalar_t__ get_ldev (struct drbd_device*) ;
 int put_ldev (struct drbd_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int drbd_bm_resize(struct drbd_device *device, sector_t capacity, int set_new_bits)
{
 struct drbd_bitmap *b = device->bitmap;
 unsigned long bits, words, owords, obits;
 unsigned long want, have, onpages;
 struct page **npages, **opages = ((void*)0);
 int err = 0;
 bool growing;

 if (!expect(b))
  return -ENOMEM;

 drbd_bm_lock(device, "resize", BM_LOCKED_MASK);

 drbd_info(device, "drbd_bm_resize called with capacity == %llu\n",
   (unsigned long long)capacity);

 if (capacity == b->bm_dev_capacity)
  goto out;

 if (capacity == 0) {
  spin_lock_irq(&b->bm_lock);
  opages = b->bm_pages;
  onpages = b->bm_number_of_pages;
  owords = b->bm_words;
  b->bm_pages = ((void*)0);
  b->bm_number_of_pages =
  b->bm_set =
  b->bm_bits =
  b->bm_words =
  b->bm_dev_capacity = 0;
  spin_unlock_irq(&b->bm_lock);
  bm_free_pages(opages, onpages);
  bm_vk_free(opages);
  goto out;
 }
 bits = BM_SECT_TO_BIT(ALIGN(capacity, BM_SECT_PER_BIT));






 words = ALIGN(bits, 64) >> LN2_BPL;

 if (get_ldev(device)) {
  u64 bits_on_disk = drbd_md_on_disk_bits(device->ldev);
  put_ldev(device);
  if (bits > bits_on_disk) {
   drbd_info(device, "bits = %lu\n", bits);
   drbd_info(device, "bits_on_disk = %llu\n", bits_on_disk);
   err = -ENOSPC;
   goto out;
  }
 }

 want = ALIGN(words*sizeof(long), PAGE_SIZE) >> PAGE_SHIFT;
 have = b->bm_number_of_pages;
 if (want == have) {
  D_ASSERT(device, b->bm_pages != ((void*)0));
  npages = b->bm_pages;
 } else {
  if (drbd_insert_fault(device, DRBD_FAULT_BM_ALLOC))
   npages = ((void*)0);
  else
   npages = bm_realloc_pages(b, want);
 }

 if (!npages) {
  err = -ENOMEM;
  goto out;
 }

 spin_lock_irq(&b->bm_lock);
 opages = b->bm_pages;
 owords = b->bm_words;
 obits = b->bm_bits;

 growing = bits > obits;
 if (opages && growing && set_new_bits)
  bm_set_surplus(b);

 b->bm_pages = npages;
 b->bm_number_of_pages = want;
 b->bm_bits = bits;
 b->bm_words = words;
 b->bm_dev_capacity = capacity;

 if (growing) {
  if (set_new_bits) {
   bm_memset(b, owords, 0xff, words-owords);
   b->bm_set += bits - obits;
  } else
   bm_memset(b, owords, 0x00, words-owords);

 }

 if (want < have) {

  bm_free_pages(opages + want, have - want);
 }

 (void)bm_clear_surplus(b);

 spin_unlock_irq(&b->bm_lock);
 if (opages != npages)
  bm_vk_free(opages);
 if (!growing)
  b->bm_set = bm_count_bits(b);
 drbd_info(device, "resync bitmap: bits=%lu words=%lu pages=%lu\n", bits, words, want);

 out:
 drbd_bm_unlock(device);
 return err;
}
