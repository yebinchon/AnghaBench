
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_list {struct object_list* next; struct object* item; } ;
struct object {int dummy; } ;



int object_list_contains(struct object_list *list, struct object *obj)
{
 while (list) {
  if (list->item == obj)
   return 1;
  list = list->next;
 }
 return 0;
}
