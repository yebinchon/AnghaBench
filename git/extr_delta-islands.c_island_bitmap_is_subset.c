
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct island_bitmap {int* bits; } ;


 size_t island_bitmap_size ;

__attribute__((used)) static int island_bitmap_is_subset(struct island_bitmap *self,
  struct island_bitmap *super)
{
 uint32_t i;

 if (self == super)
  return 1;

 for (i = 0; i < island_bitmap_size; ++i) {
  if ((self->bits[i] & super->bits[i]) != self->bits[i])
   return 0;
 }

 return 1;
}
