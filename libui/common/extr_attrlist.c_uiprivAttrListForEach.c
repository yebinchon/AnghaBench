
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct attr* first; } ;
typedef TYPE_1__ uiprivAttrList ;
typedef scalar_t__ uiForEach ;
typedef scalar_t__ (* uiAttributedStringForEachAttributeFunc ) (int const*,int ,int ,int ,void*) ;
typedef int uiAttributedString ;
struct attr {int end; int start; int val; struct attr* next; } ;


 scalar_t__ stub1 (int const*,int ,int ,int ,void*) ;
 scalar_t__ uiForEachStop ;

void uiprivAttrListForEach(const uiprivAttrList *alist, const uiAttributedString *s, uiAttributedStringForEachAttributeFunc f, void *data)
{
 struct attr *a;
 uiForEach ret;

 for (a = alist->first; a != ((void*)0); a = a->next) {
  ret = (*f)(s, a->val, a->start, a->end, data);
  if (ret == uiForEachStop)

   break;
 }
}
