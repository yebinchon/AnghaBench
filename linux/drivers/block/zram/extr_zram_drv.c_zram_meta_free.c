
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct zram {int table; int mem_pool; } ;


 size_t PAGE_SHIFT ;
 int vfree (int ) ;
 int zram_free_page (struct zram*,size_t) ;
 int zs_destroy_pool (int ) ;

__attribute__((used)) static void zram_meta_free(struct zram *zram, u64 disksize)
{
 size_t num_pages = disksize >> PAGE_SHIFT;
 size_t index;


 for (index = 0; index < num_pages; index++)
  zram_free_page(zram, index);

 zs_destroy_pool(zram->mem_pool);
 vfree(zram->table);
}
