
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct island_bitmap {int* bits; } ;


 size_t ISLAND_BITMAP_BLOCK (int ) ;
 int ISLAND_BITMAP_MASK (int ) ;

__attribute__((used)) static int island_bitmap_get(struct island_bitmap *self, uint32_t i)
{
 return (self->bits[ISLAND_BITMAP_BLOCK(i)] & ISLAND_BITMAP_MASK(i)) != 0;
}
