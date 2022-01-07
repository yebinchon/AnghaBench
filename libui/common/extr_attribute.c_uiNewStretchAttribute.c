
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiTextStretch ;
struct TYPE_5__ {int stretch; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;


 TYPE_2__* newAttribute (int ) ;
 int uiAttributeTypeStretch ;

uiAttribute *uiNewStretchAttribute(uiTextStretch stretch)
{
 uiAttribute *a;

 a = newAttribute(uiAttributeTypeStretch);
 a->u.stretch = stretch;
 return a;
}
