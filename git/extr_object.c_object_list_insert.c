
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_list {struct object_list* next; struct object* item; } ;
struct object {int dummy; } ;


 struct object_list* xmalloc (int) ;

struct object_list *object_list_insert(struct object *item,
           struct object_list **list_p)
{
 struct object_list *new_list = xmalloc(sizeof(struct object_list));
 new_list->item = item;
 new_list->next = *list_p;
 *list_p = new_list;
 return new_list;
}
