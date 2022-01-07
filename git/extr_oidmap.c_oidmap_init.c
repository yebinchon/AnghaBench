
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidmap {int map; } ;


 int hashmap_init (int *,int ,int *,size_t) ;
 int oidmap_neq ;

void oidmap_init(struct oidmap *map, size_t initial_size)
{
 hashmap_init(&map->map, oidmap_neq, ((void*)0), initial_size);
}
