
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zram {int dummy; } ;


 int ZRAM_IDLE ;
 int zram_clear_flag (struct zram*,int ,int ) ;

__attribute__((used)) static void zram_accessed(struct zram *zram, u32 index)
{
 zram_clear_flag(zram, index, ZRAM_IDLE);
}
