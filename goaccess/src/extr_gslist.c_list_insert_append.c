
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ GSLList ;


 TYPE_1__* list_create (void*) ;

GSLList *
list_insert_append (GSLList * node, void *data)
{
  GSLList *newnode;
  newnode = list_create (data);
  newnode->next = node->next;
  node->next = newnode;

  return newnode;
}
