
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* bitmap; int pagesize; } ;
typedef TYPE_1__ memmap ;


 int BOOT_MEM_RAM ;
 scalar_t__ CKSEG0ADDR (int) ;
 int add_memory_region (unsigned long,unsigned long,int ) ;
 int rex_getbitmap (TYPE_1__*) ;

__attribute__((used)) static inline void rex_setup_memory_region(void)
{
 int i, bitmap_size;
 unsigned long mem_start = 0, mem_size = 0;
 memmap *bm;


 bm = (memmap *)CKSEG0ADDR(0x28000);

 bitmap_size = rex_getbitmap(bm);

 for (i = 0; i < bitmap_size; i++) {

  if (bm->bitmap[i] == 0xff)
   mem_size += (8 * bm->pagesize);
  else if (!mem_size)
   mem_start += (8 * bm->pagesize);
  else {
   add_memory_region(mem_start, mem_size, BOOT_MEM_RAM);
   mem_start += mem_size + (8 * bm->pagesize);
   mem_size = 0;
  }
 }
 if (mem_size)
  add_memory_region(mem_start, mem_size, BOOT_MEM_RAM);
}
