
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bit_map {int used; int first_free; int lock; int map; } ;


 int BUG () ;
 int __clear_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;

void bit_map_clear(struct bit_map *t, int offset, int len)
{
 int i;

 if (t->used < len)
  BUG();
 spin_lock(&t->lock);
 for (i = 0; i < len; i++) {
  if (test_bit(offset + i, t->map) == 0)
   BUG();
  __clear_bit(offset + i, t->map);
 }
 if (offset < t->first_free)
  t->first_free = offset;
 t->used -= len;
 spin_unlock(&t->lock);
}
