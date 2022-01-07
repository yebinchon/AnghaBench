
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zram {int dummy; } ;


 int ZRAM_SAME ;
 int ZRAM_WB ;
 scalar_t__ zram_get_obj_size (struct zram*,int ) ;
 scalar_t__ zram_test_flag (struct zram*,int ,int ) ;

__attribute__((used)) static inline bool zram_allocated(struct zram *zram, u32 index)
{
 return zram_get_obj_size(zram, index) ||
   zram_test_flag(zram, index, ZRAM_SAME) ||
   zram_test_flag(zram, index, ZRAM_WB);
}
