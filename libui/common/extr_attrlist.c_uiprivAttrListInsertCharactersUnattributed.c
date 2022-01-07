
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct attr* first; } ;
typedef TYPE_1__ uiprivAttrList ;
struct attr {size_t start; size_t end; struct attr* next; } ;


 int attrHasPos (struct attr*,size_t) ;
 int attrInsertBefore (TYPE_1__*,struct attr*,struct attr*) ;
 struct attr* attrSplitAt (TYPE_1__*,struct attr*,size_t) ;

void uiprivAttrListInsertCharactersUnattributed(uiprivAttrList *alist, size_t start, size_t count)
{
 struct attr *a;
 struct attr *tails = ((void*)0);



 for (a = alist->first; a != ((void*)0); a = a->next) {
  struct attr *tail;


  if (a->start >= start)
   break;

  if (!attrHasPos(a, start))
   continue;

  tail = attrSplitAt(alist, a, start);

  tail->start += count;
  tail->end += count;



  tail->next = tails;
  tails = tail;
 }




 while (tails != ((void*)0)) {
  struct attr *next;


  next = tails->next;
  tails->next = ((void*)0);
  attrInsertBefore(alist, tails, a);
  tails = next;
 }



 for (; a != ((void*)0); a = a->next) {
  a->start += count;
  a->end += count;
 }
}
