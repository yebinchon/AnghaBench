
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double R; double G; double B; double A; int Type; } ;
typedef TYPE_1__ uiDrawBrush ;


 int uiDrawBrushTypeSolid ;

__attribute__((used)) static void crsourcergba(uiDrawBrush *brush, double r, double g, double b, double a)
{
 brush->Type = uiDrawBrushTypeSolid;
 brush->R = r;
 brush->G = g;
 brush->B = b;
 brush->A = a;
}
