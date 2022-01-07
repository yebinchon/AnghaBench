
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* data; struct TYPE_4__* next; } ;
typedef TYPE_1__ GSLList ;



GSLList *
list_find (GSLList * node, int (*func) (void *, void *), void *data)
{
  while (node) {
    if (func (node->data, data) > 0)
      return node;
    node = node->next;
  }

  return ((void*)0);
}
