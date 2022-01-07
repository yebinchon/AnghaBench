
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; struct TYPE_4__* next; } ;
typedef TYPE_1__ GSLList ;


 int free (TYPE_1__*) ;

int
list_remove_nodes (GSLList * list)
{
  GSLList *tmp;
  while (list != ((void*)0)) {
    tmp = list->next;
    if (list->data)
      free (list->data);
    free (list);
    list = tmp;
  }

  return 0;
}
