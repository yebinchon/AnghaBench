
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct TYPE_2__ {unsigned long flags; } ;


 unsigned long ZRAM_FLAG_SHIFT ;

__attribute__((used)) static void zram_set_obj_size(struct zram *zram,
     u32 index, size_t size)
{
 unsigned long flags = zram->table[index].flags >> ZRAM_FLAG_SHIFT;

 zram->table[index].flags = (flags << ZRAM_FLAG_SHIFT) | size;
}
