
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PHYSMEM_BITS ;
 int add_mem_detect_block (int ,unsigned long) ;
 int tprot (unsigned long) ;

__attribute__((used)) static void search_mem_end(void)
{
 unsigned long range = 1 << (MAX_PHYSMEM_BITS - 20);
 unsigned long offset = 0;
 unsigned long pivot;

 while (range > 1) {
  range >>= 1;
  pivot = offset + range;
  if (!tprot(pivot << 20))
   offset = pivot;
 }

 add_mem_detect_block(0, (offset + 1) << 20);
}
