
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int * work_buf; } ;
typedef int __be16 ;


 int cpu_to_be16 (unsigned int) ;

__attribute__((used)) static void regmap_format_7_9_write(struct regmap *map,
        unsigned int reg, unsigned int val)
{
 __be16 *out = map->work_buf;
 *out = cpu_to_be16((reg << 9) | val);
}
