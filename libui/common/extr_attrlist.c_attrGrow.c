
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct attr* first; } ;
typedef TYPE_1__ uiprivAttrList ;
struct attr {size_t end; size_t start; struct attr* next; } ;


 int attrInsertBefore (TYPE_1__*,struct attr*,struct attr*) ;
 int attrUnlink (TYPE_1__*,struct attr*) ;

__attribute__((used)) static void attrGrow(uiprivAttrList *alist, struct attr *a, size_t start, size_t end)
{
 struct attr *before;


 if (a->end < end)
  a->end = end;




 if (a->start <= start)
  return;
 a->start = start;
 attrUnlink(alist, a);
 for (before = alist->first; before != ((void*)0); before = before->next)
  if (before->start > a->start)
   break;
 attrInsertBefore(alist, a, before);
}
