
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_list {struct object_list* next; struct object* item; } ;
struct object {int dummy; } ;


 struct object_list* xmalloc (int) ;

__attribute__((used)) static struct object_list **add_one_object(struct object *obj, struct object_list **p)
{
 struct object_list *entry = xmalloc(sizeof(struct object_list));
 entry->item = obj;
 entry->next = *p;
 *p = entry;
 return &entry->next;
}
