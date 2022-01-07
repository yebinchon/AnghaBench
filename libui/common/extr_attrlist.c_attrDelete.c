
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiprivAttrList ;
struct attr {int val; } ;


 struct attr* attrUnlink (int *,struct attr*) ;
 int uiprivAttributeRelease (int ) ;
 int uiprivFree (struct attr*) ;

__attribute__((used)) static struct attr *attrDelete(uiprivAttrList *alist, struct attr *a)
{
 struct attr *next;

 next = attrUnlink(alist, a);
 uiprivAttributeRelease(a->val);
 uiprivFree(a);
 return next;
}
