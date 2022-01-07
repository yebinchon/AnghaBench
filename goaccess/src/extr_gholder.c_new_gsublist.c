
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int * tail; int * head; } ;
typedef TYPE_1__ GSubList ;


 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static GSubList *
new_gsublist (void)
{
  GSubList *sub_list = xmalloc (sizeof (GSubList));
  sub_list->head = ((void*)0);
  sub_list->tail = ((void*)0);
  sub_list->size = 0;

  return sub_list;
}
