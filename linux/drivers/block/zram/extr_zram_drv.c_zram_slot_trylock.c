
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct TYPE_2__ {int flags; } ;


 int ZRAM_LOCK ;
 int bit_spin_trylock (int ,int *) ;

__attribute__((used)) static int zram_slot_trylock(struct zram *zram, u32 index)
{
 return bit_spin_trylock(ZRAM_LOCK, &zram->table[index].flags);
}
