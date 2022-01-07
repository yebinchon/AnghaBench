
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct TYPE_2__ {unsigned long handle; } ;



__attribute__((used)) static void zram_set_handle(struct zram *zram, u32 index, unsigned long handle)
{
 zram->table[index].handle = handle;
}
