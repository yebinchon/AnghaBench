
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int * string; } ;
struct string_list {int nr; struct string_list_item* items; } ;


 int string_list_find_insert_index (struct string_list*,char const*,int) ;
 int strncasecmp (int *,char const*,size_t) ;

__attribute__((used)) static struct string_list_item *lookup_prefix(struct string_list *map,
           const char *string, size_t len)
{
 int i = string_list_find_insert_index(map, string, 1);
 if (i < 0) {

  i = -1 - i;
  if (!string[len])
   return &map->items[i];





 } else if (!string[len]) {




  return ((void*)0);
 }






 while (0 <= --i && i < map->nr) {
  int cmp = strncasecmp(map->items[i].string, string, len);
  if (cmp < 0)




   break;
  else if (!cmp && !map->items[i].string[len])

   return &map->items[i];





 }
 return ((void*)0);
}
