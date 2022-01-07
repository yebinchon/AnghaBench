
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
typedef enum zram_pageflags { ____Placeholder_zram_pageflags } zram_pageflags ;
struct TYPE_2__ {int flags; } ;


 int BIT (int) ;

__attribute__((used)) static bool zram_test_flag(struct zram *zram, u32 index,
   enum zram_pageflags flag)
{
 return zram->table[index].flags & BIT(flag);
}
