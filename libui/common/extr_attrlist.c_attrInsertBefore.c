
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct attr* first; struct attr* last; } ;
typedef TYPE_1__ uiprivAttrList ;
struct attr {struct attr* next; struct attr* prev; } ;



__attribute__((used)) static void attrInsertBefore(uiprivAttrList *alist, struct attr *a, struct attr *before)
{

 if (alist->first == ((void*)0)) {
  alist->first = a;
  alist->last = a;
  return;
 }


 if (before == ((void*)0)) {
  struct attr *oldlast;

  oldlast = alist->last;
  alist->last = a;
  a->prev = oldlast;
  oldlast->next = a;
  return;
 }


 if (before == alist->first) {
  struct attr *oldfirst;

  oldfirst = alist->first;
  alist->first = a;
  oldfirst->prev = a;
  a->next = oldfirst;
  return;
 }


 a->prev = before->prev;
 a->next = before;
 before->prev = a;
 a->prev->next = a;
}
