
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrs; } ;
typedef TYPE_1__ uiAttributedString ;
typedef int uiAttribute ;


 int uiprivAttrListInsertAttribute (int ,int *,size_t,size_t) ;

void uiAttributedStringSetAttribute(uiAttributedString *s, uiAttribute *a, size_t start, size_t end)
{
 uiprivAttrListInsertAttribute(s->attrs, a, start, end);
}
