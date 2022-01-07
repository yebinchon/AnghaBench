
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidmap {int map; } ;


 int hashmap_free_ (int *,int) ;

void oidmap_free(struct oidmap *map, int free_entries)
{
 if (!map)
  return;


 hashmap_free_(&map->map, free_entries ? 0 : -1);
}
