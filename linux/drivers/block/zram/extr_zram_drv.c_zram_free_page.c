
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pages_stored; int compr_data_size; int same_pages; int huge_pages; } ;
struct zram {TYPE_2__* table; TYPE_1__ stats; int mem_pool; } ;
struct TYPE_4__ {unsigned long flags; scalar_t__ ac_time; } ;


 int WARN_ON_ONCE (unsigned long) ;
 int ZRAM_HUGE ;
 int ZRAM_IDLE ;
 unsigned long ZRAM_LOCK ;
 int ZRAM_SAME ;
 unsigned long ZRAM_UNDER_WB ;
 int ZRAM_WB ;
 int atomic64_dec (int *) ;
 int atomic64_sub (int ,int *) ;
 int free_block_bdev (struct zram*,int ) ;
 int zram_clear_flag (struct zram*,size_t,int ) ;
 int zram_get_element (struct zram*,size_t) ;
 unsigned long zram_get_handle (struct zram*,size_t) ;
 int zram_get_obj_size (struct zram*,size_t) ;
 int zram_set_handle (struct zram*,size_t,int ) ;
 int zram_set_obj_size (struct zram*,size_t,int ) ;
 scalar_t__ zram_test_flag (struct zram*,size_t,int ) ;
 int zs_free (int ,unsigned long) ;

__attribute__((used)) static void zram_free_page(struct zram *zram, size_t index)
{
 unsigned long handle;




 if (zram_test_flag(zram, index, ZRAM_IDLE))
  zram_clear_flag(zram, index, ZRAM_IDLE);

 if (zram_test_flag(zram, index, ZRAM_HUGE)) {
  zram_clear_flag(zram, index, ZRAM_HUGE);
  atomic64_dec(&zram->stats.huge_pages);
 }

 if (zram_test_flag(zram, index, ZRAM_WB)) {
  zram_clear_flag(zram, index, ZRAM_WB);
  free_block_bdev(zram, zram_get_element(zram, index));
  goto out;
 }





 if (zram_test_flag(zram, index, ZRAM_SAME)) {
  zram_clear_flag(zram, index, ZRAM_SAME);
  atomic64_dec(&zram->stats.same_pages);
  goto out;
 }

 handle = zram_get_handle(zram, index);
 if (!handle)
  return;

 zs_free(zram->mem_pool, handle);

 atomic64_sub(zram_get_obj_size(zram, index),
   &zram->stats.compr_data_size);
out:
 atomic64_dec(&zram->stats.pages_stored);
 zram_set_handle(zram, index, 0);
 zram_set_obj_size(zram, index, 0);
 WARN_ON_ONCE(zram->table[index].flags &
  ~(1UL << ZRAM_LOCK | 1UL << ZRAM_UNDER_WB));
}
