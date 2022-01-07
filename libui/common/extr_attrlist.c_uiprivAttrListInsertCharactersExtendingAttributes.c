
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct attr* first; } ;
typedef TYPE_1__ uiprivAttrList ;
struct attr {size_t start; size_t end; struct attr* next; } ;



void uiprivAttrListInsertCharactersExtendingAttributes(uiprivAttrList *alist, size_t start, size_t count)
{
 struct attr *a;

 for (a = alist->first; a != ((void*)0); a = a->next) {
  if (a->start < start)
   a->start += count;
  else if (a->start == start && start != 0)
   a->start += count;
  if (a->end <= start)
   a->end += count;
 }
}
