
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int dir_rename_cmp ;
 int hashmap_init (struct hashmap*,int ,int *,int ) ;

__attribute__((used)) static void dir_rename_init(struct hashmap *map)
{
 hashmap_init(map, dir_rename_cmp, ((void*)0), 0);
}
