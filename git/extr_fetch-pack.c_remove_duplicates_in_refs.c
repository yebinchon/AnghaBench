
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct ref* util; } ;
struct string_list {int dummy; } ;
struct ref {int name; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 int string_list_clear (struct string_list*,int ) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;

__attribute__((used)) static int remove_duplicates_in_refs(struct ref **ref, int nr)
{
 struct string_list names = STRING_LIST_INIT_NODUP;
 int src, dst;

 for (src = dst = 0; src < nr; src++) {
  struct string_list_item *item;
  item = string_list_insert(&names, ref[src]->name);
  if (item->util)
   continue;
  item->util = ref[src];
  if (src != dst)
   ref[dst] = ref[src];
  dst++;
 }
 for (src = dst; src < nr; src++)
  ref[src] = ((void*)0);
 string_list_clear(&names, 0);
 return dst;
}
