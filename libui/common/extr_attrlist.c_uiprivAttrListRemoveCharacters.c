
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct attr* first; } ;
typedef TYPE_1__ uiprivAttrList ;
struct attr {int dummy; } ;


 struct attr* attrDeleteRange (TYPE_1__*,struct attr*,size_t,size_t) ;

void uiprivAttrListRemoveCharacters(uiprivAttrList *alist, size_t start, size_t end)
{
 struct attr *a;

 a = alist->first;
 while (a != ((void*)0))
  a = attrDeleteRange(alist, a, start, end);
}
