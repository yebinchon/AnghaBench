
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct hashmap {int dummy; } ;
struct dir_rename_entry {int ent; } ;
struct TYPE_2__ {struct dir_rename_entry* util; } ;


 int hashmap_remove (struct hashmap*,int *,int *) ;
 int string_list_clear (struct string_list*,int ) ;

__attribute__((used)) static void remove_hashmap_entries(struct hashmap *dir_renames,
       struct string_list *items_to_remove)
{
 int i;
 struct dir_rename_entry *entry;

 for (i = 0; i < items_to_remove->nr; i++) {
  entry = items_to_remove->items[i].util;
  hashmap_remove(dir_renames, &entry->ent, ((void*)0));
 }
 string_list_clear(items_to_remove, 0);
}
