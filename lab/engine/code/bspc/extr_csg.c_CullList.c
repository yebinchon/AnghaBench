
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ bspbrush_t ;


 int FreeBrush (TYPE_1__*) ;

bspbrush_t *CullList(bspbrush_t *list, bspbrush_t *skip1)
{
 bspbrush_t *newlist;
 bspbrush_t *next;

 newlist = ((void*)0);

 for ( ; list ; list = next)
 {
  next = list->next;
  if (list == skip1)
  {
   FreeBrush (list);
   continue;
  }
  list->next = newlist;
  newlist = list;
 }
 return newlist;
}
