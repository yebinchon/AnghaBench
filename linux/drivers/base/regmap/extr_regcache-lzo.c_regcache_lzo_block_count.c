
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int LZO_BLOCK_NUM ;

__attribute__((used)) static int regcache_lzo_block_count(struct regmap *map)
{
 return LZO_BLOCK_NUM;
}
