
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct island_bitmap {int * bits; } ;


 size_t island_bitmap_size ;

__attribute__((used)) static void island_bitmap_or(struct island_bitmap *a, const struct island_bitmap *b)
{
 uint32_t i;

 for (i = 0; i < island_bitmap_size; ++i)
  a->bits[i] |= b->bits[i];
}
