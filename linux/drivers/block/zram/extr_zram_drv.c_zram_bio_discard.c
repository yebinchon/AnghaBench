
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int notify_free; } ;
struct zram {TYPE_2__ stats; } ;
struct TYPE_3__ {size_t bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int PAGE_SIZE ;
 int atomic64_inc (int *) ;
 int zram_free_page (struct zram*,int ) ;
 int zram_slot_lock (struct zram*,int ) ;
 int zram_slot_unlock (struct zram*,int ) ;

__attribute__((used)) static void zram_bio_discard(struct zram *zram, u32 index,
        int offset, struct bio *bio)
{
 size_t n = bio->bi_iter.bi_size;
 if (offset) {
  if (n <= (PAGE_SIZE - offset))
   return;

  n -= (PAGE_SIZE - offset);
  index++;
 }

 while (n >= PAGE_SIZE) {
  zram_slot_lock(zram, index);
  zram_free_page(zram, index);
  zram_slot_unlock(zram, index);
  atomic64_inc(&zram->stats.notify_free);
  index++;
  n -= PAGE_SIZE;
 }
}
