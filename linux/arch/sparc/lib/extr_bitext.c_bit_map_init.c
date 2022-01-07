
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bit_map {unsigned long* map; int size; int lock; } ;


 int bitmap_zero (unsigned long*,int) ;
 int memset (struct bit_map*,int ,int) ;
 int spin_lock_init (int *) ;

void bit_map_init(struct bit_map *t, unsigned long *map, int size)
{
 bitmap_zero(map, size);
 memset(t, 0, sizeof *t);
 spin_lock_init(&t->lock);
 t->map = map;
 t->size = size;
}
