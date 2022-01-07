
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int collision_cmp ;
 int hashmap_init (struct hashmap*,int ,int *,int ) ;

__attribute__((used)) static void collision_init(struct hashmap *map)
{
 hashmap_init(map, collision_cmp, ((void*)0), 0);
}
