
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uiUnderlineColor ;
struct TYPE_6__ {int underlineColor; } ;
struct TYPE_7__ {TYPE_1__ color; } ;
struct TYPE_8__ {TYPE_2__ u; int type; } ;
typedef TYPE_3__ uiAttribute ;


 int uiAttributeTypeUnderlineColor ;
 TYPE_3__* uiNewColorAttribute (double,double,double,double) ;

uiAttribute *uiNewUnderlineColorAttribute(uiUnderlineColor u, double r, double g, double b, double a)
{
 uiAttribute *at;

 at = uiNewColorAttribute(r, g, b, a);
 at->type = uiAttributeTypeUnderlineColor;
 at->u.color.underlineColor = u;
 return at;
}
