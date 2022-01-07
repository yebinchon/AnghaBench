
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfit_set_info_map {int region_offset; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int cmp_map_compat(const void *m0, const void *m1)
{
 const struct nfit_set_info_map *map0 = m0;
 const struct nfit_set_info_map *map1 = m1;

 return memcmp(&map0->region_offset, &map1->region_offset,
   sizeof(u64));
}
