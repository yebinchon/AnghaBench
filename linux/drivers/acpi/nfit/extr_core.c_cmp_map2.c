
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_set_info_map2 {scalar_t__ region_offset; } ;



__attribute__((used)) static int cmp_map2(const void *m0, const void *m1)
{
 const struct nfit_set_info_map2 *map0 = m0;
 const struct nfit_set_info_map2 *map1 = m1;

 if (map0->region_offset < map1->region_offset)
  return -1;
 else if (map0->region_offset > map1->region_offset)
  return 1;
 return 0;
}
