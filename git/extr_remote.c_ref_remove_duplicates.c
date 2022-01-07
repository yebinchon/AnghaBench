
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list_item {struct ref* util; } ;
struct string_list {int dummy; } ;
struct ref {struct ref* next; TYPE_1__* peer_ref; } ;
struct TYPE_2__ {int name; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 int handle_duplicate (struct ref*,struct ref*) ;
 int string_list_clear (struct string_list*,int ) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;

struct ref *ref_remove_duplicates(struct ref *ref_map)
{
 struct string_list refs = STRING_LIST_INIT_NODUP;
 struct ref *retval = ((void*)0);
 struct ref **p = &retval;

 while (ref_map) {
  struct ref *ref = ref_map;

  ref_map = ref_map->next;
  ref->next = ((void*)0);

  if (!ref->peer_ref) {
   *p = ref;
   p = &ref->next;
  } else {
   struct string_list_item *item =
    string_list_insert(&refs, ref->peer_ref->name);

   if (item->util) {

    handle_duplicate((struct ref *)item->util, ref);
   } else {
    *p = ref;
    p = &ref->next;
    item->util = ref;
   }
  }
 }

 string_list_clear(&refs, 0);
 return retval;
}
