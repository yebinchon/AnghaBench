
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* data; struct TYPE_5__* next; } ;
typedef TYPE_1__ GSLList ;


 int free (TYPE_1__*) ;

int
list_remove_node (GSLList ** list, GSLList * node)
{
  GSLList **current = list, *next = ((void*)0);
  for (; *current; current = &(*current)->next) {
    if ((*current) != node)
      continue;

    next = (*current)->next;
    if ((*current)->data)
      free ((*current)->data);
    free (*current);
    *current = next;
    return 0;
  }
  return 1;
}
