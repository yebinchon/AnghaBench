
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct attr* first; } ;
typedef TYPE_1__ uiprivAttrList ;
typedef scalar_t__ uiAttributeType ;
struct attr {size_t start; struct attr* next; int val; } ;


 struct attr* attrDropRange (TYPE_1__*,struct attr*,size_t,size_t,struct attr**) ;
 int attrInsertBefore (TYPE_1__*,struct attr*,struct attr*) ;
 int attrRangeIntersect (struct attr*,size_t*,size_t*) ;
 scalar_t__ uiAttributeGetType (int ) ;

void uiprivAttrListRemoveAttribute(uiprivAttrList *alist, uiAttributeType type, size_t start, size_t end)
{
 struct attr *a;
 struct attr *tails = ((void*)0);
 struct attr *tailsAt = ((void*)0);

 a = alist->first;
 while (a != ((void*)0)) {
  size_t lstart, lend;
  struct attr *tail;



  if (a->start >= end) {
   tailsAt = a;

   break;
  }
  if (uiAttributeGetType(a->val) != type)
   goto next;
  lstart = start;
  lend = end;
  if (!attrRangeIntersect(a, &lstart, &lend))
   goto next;
  a = attrDropRange(alist, a, start, end, &tail);
  if (tail != ((void*)0)) {
   tail->next = tails;
   tails = tail;
  }
  continue;

 next:
  a = a->next;
 }

 while (tails != ((void*)0)) {
  struct attr *next;


  next = tails->next;
  tails->next = ((void*)0);
  attrInsertBefore(alist, tails, a);
  tails = next;
 }
}
