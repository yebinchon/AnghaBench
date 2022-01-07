
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct TYPE_2__ {int flags; } ;


 int ZRAM_LOCK ;
 int bit_spin_unlock (int ,int *) ;

__attribute__((used)) static void zram_slot_unlock(struct zram *zram, u32 index)
{
 bit_spin_unlock(ZRAM_LOCK, &zram->table[index].flags);
}
