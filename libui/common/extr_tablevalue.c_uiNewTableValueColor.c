
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
typedef TYPE_3__ uiTableValue ;


 TYPE_3__* newTableValue (int ) ;
 int uiTableValueTypeColor ;

uiTableValue *uiNewTableValueColor(double r, double g, double b, double a)
{
 uiTableValue *v;

 v = newTableValue(uiTableValueTypeColor);
 v->u.color.r = r;
 v->u.color.g = g;
 v->u.color.b = b;
 v->u.color.a = a;
 return v;
}
