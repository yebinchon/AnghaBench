
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MACHINE_HAS_EDAT1 ;
 int PAGE_DEFAULT_KEY ;
 scalar_t__ PAGE_SIZE ;
 int page_set_storage_key (unsigned long,int ,int) ;
 unsigned long sske_frame (unsigned long,int ) ;

void __storage_key_init_range(unsigned long start, unsigned long end)
{
 unsigned long boundary, size;

 while (start < end) {
  if (MACHINE_HAS_EDAT1) {

   size = 1UL << 20;
   boundary = (start + size) & ~(size - 1);
   if (boundary <= end) {
    do {
     start = sske_frame(start, PAGE_DEFAULT_KEY);
    } while (start < boundary);
    continue;
   }
  }
  page_set_storage_key(start, PAGE_DEFAULT_KEY, 1);
  start += PAGE_SIZE;
 }
}
