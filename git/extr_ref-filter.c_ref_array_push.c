
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_array_item {int dummy; } ;
struct ref_array {scalar_t__ nr; struct ref_array_item** items; int alloc; } ;
struct object_id {int dummy; } ;


 int ALLOC_GROW (struct ref_array_item**,scalar_t__,int ) ;
 struct ref_array_item* new_ref_array_item (char const*,struct object_id const*) ;

struct ref_array_item *ref_array_push(struct ref_array *array,
          const char *refname,
          const struct object_id *oid)
{
 struct ref_array_item *ref = new_ref_array_item(refname, oid);

 ALLOC_GROW(array->items, array->nr + 1, array->alloc);
 array->items[array->nr++] = ref;

 return ref;
}
