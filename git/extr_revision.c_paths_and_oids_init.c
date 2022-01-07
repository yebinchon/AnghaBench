
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int hashmap_init (struct hashmap*,int ,int *,int ) ;
 int path_and_oids_cmp ;

__attribute__((used)) static void paths_and_oids_init(struct hashmap *map)
{
 hashmap_init(map, path_and_oids_cmp, ((void*)0), 0);
}
