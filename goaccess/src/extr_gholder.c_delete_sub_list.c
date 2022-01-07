
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; struct TYPE_5__* head; struct TYPE_5__* metrics; struct TYPE_5__* data; struct TYPE_5__* next; } ;
typedef TYPE_1__ GSubList ;
typedef TYPE_1__ GSubItem ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
delete_sub_list (GSubList * sub_list)
{
  GSubItem *item = ((void*)0);
  GSubItem *next = ((void*)0);

  if (sub_list != ((void*)0) && sub_list->size == 0)
    goto clear;
  if (sub_list->size == 0)
    return;

  for (item = sub_list->head; item; item = next) {
    next = item->next;
    free (item->metrics->data);
    free (item->metrics);
    free (item);
  }
clear:
  sub_list->head = ((void*)0);
  sub_list->size = 0;
  free (sub_list);
}
