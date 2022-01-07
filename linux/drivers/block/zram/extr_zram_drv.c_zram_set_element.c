
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct TYPE_2__ {unsigned long element; } ;



__attribute__((used)) static inline void zram_set_element(struct zram *zram, u32 index,
   unsigned long element)
{
 zram->table[index].element = element;
}
