
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct regmap {unsigned int* work_buf; } ;



__attribute__((used)) static void regmap_format_10_14_write(struct regmap *map,
        unsigned int reg, unsigned int val)
{
 u8 *out = map->work_buf;

 out[2] = val;
 out[1] = (val >> 8) | (reg << 6);
 out[0] = reg >> 2;
}
