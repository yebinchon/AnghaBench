
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr {int val; struct attr* next; struct attr* first; } ;
typedef struct attr uiprivAttrList ;


 int uiprivAttributeRelease (int ) ;
 int uiprivFree (struct attr*) ;

void uiprivFreeAttrList(uiprivAttrList *alist)
{
 struct attr *a, *next;

 a = alist->first;
 while (a != ((void*)0)) {
  next = a->next;
  uiprivAttributeRelease(a->val);
  uiprivFree(a);
  a = next;
 }
 uiprivFree(alist);
}
