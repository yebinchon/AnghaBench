
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct regmap {unsigned long* work_buf; } ;



__attribute__((used)) static void regmap_set_work_buf_flag_mask(struct regmap *map, int max_bytes,
       unsigned long mask)
{
 u8 *buf;
 int i;

 if (!mask || !map->work_buf)
  return;

 buf = map->work_buf;

 for (i = 0; i < max_bytes; i++)
  buf[i] |= (mask >> (8 * i)) & 0xff;
}
