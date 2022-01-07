
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct adm5120_map_info {int dummy; } ;



__attribute__((used)) static inline struct adm5120_map_info *map_to_amap(struct map_info *map)
{
 return (struct adm5120_map_info *)map;
}
