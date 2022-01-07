
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiAttributedStringForEachAttributeFunc ;
struct TYPE_4__ {int attrs; } ;
typedef TYPE_1__ uiAttributedString ;


 int uiprivAttrListForEach (int ,TYPE_1__ const*,int ,void*) ;

void uiAttributedStringForEachAttribute(const uiAttributedString *s, uiAttributedStringForEachAttributeFunc f, void *data)
{
 uiprivAttrListForEach(s->attrs, s, f, data);
}
