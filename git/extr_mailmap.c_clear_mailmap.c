
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int strdup_strings; int nr; } ;


 int debug_mm (char*,...) ;
 int free_mailmap_entry ;
 int string_list_clear_func (struct string_list*,int ) ;

void clear_mailmap(struct string_list *map)
{
 debug_mm("mailmap: clearing %d entries...\n", map->nr);
 map->strdup_strings = 1;
 string_list_clear_func(map, free_mailmap_entry);
 debug_mm("mailmap: cleared\n");
}
