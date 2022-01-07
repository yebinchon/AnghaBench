
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct TYPE_2__ {int flags; } ;


 int BIT (int ) ;
 int ZRAM_FLAG_SHIFT ;

__attribute__((used)) static size_t zram_get_obj_size(struct zram *zram, u32 index)
{
 return zram->table[index].flags & (BIT(ZRAM_FLAG_SHIFT) - 1);
}
