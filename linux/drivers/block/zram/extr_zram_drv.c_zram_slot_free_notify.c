
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int miss_free; int notify_free; } ;
struct zram {TYPE_2__ stats; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_3__ {struct zram* private_data; } ;


 int atomic64_inc (int *) ;
 int zram_free_page (struct zram*,unsigned long) ;
 int zram_slot_trylock (struct zram*,unsigned long) ;
 int zram_slot_unlock (struct zram*,unsigned long) ;

__attribute__((used)) static void zram_slot_free_notify(struct block_device *bdev,
    unsigned long index)
{
 struct zram *zram;

 zram = bdev->bd_disk->private_data;

 atomic64_inc(&zram->stats.notify_free);
 if (!zram_slot_trylock(zram, index)) {
  atomic64_inc(&zram->stats.miss_free);
  return;
 }

 zram_free_page(zram, index);
 zram_slot_unlock(zram, index);
}
