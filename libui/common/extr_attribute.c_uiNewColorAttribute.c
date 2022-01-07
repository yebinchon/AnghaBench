
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {double r; double g; double b; double a; } ;
struct TYPE_6__ {TYPE_2__ color; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_3__ uiAttribute ;


 TYPE_3__* newAttribute (int ) ;
 int uiAttributeTypeColor ;

uiAttribute *uiNewColorAttribute(double r, double g, double b, double a)
{
 uiAttribute *at;

 at = newAttribute(uiAttributeTypeColor);
 at->u.color.r = r;
 at->u.color.g = g;
 at->u.color.b = b;
 at->u.color.a = a;
 return at;
}
