
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct attr* last; struct attr* first; } ;
typedef TYPE_1__ uiprivAttrList ;
struct attr {struct attr* prev; struct attr* next; } ;



__attribute__((used)) static struct attr *attrUnlink(uiprivAttrList *alist, struct attr *a)
{
 struct attr *p, *n;

 p = a->prev;
 n = a->next;
 a->prev = ((void*)0);
 a->next = ((void*)0);


 if (p == ((void*)0) && n == ((void*)0)) {
  alist->first = ((void*)0);
  alist->last = ((void*)0);
  return ((void*)0);
 }

 if (p == ((void*)0)) {
  n->prev = ((void*)0);
  alist->first = n;
  return n;
 }

 if (n == ((void*)0)) {
  p->next = ((void*)0);
  alist->last = p;
  return ((void*)0);
 }

 p->next = n;
 n->prev = p;
 return n;
}
