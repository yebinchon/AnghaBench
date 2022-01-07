
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {double A; int B; int G; int R; int Type; } ;
typedef TYPE_1__ uiDrawBrush ;


 int d2dColorToRGB (int ,int *,int *,int *) ;
 int uiDrawBrushTypeSolid ;

__attribute__((used)) static void d2dSolidBrush(uiDrawBrush *brush, uint32_t color, double alpha)
{
 brush->Type = uiDrawBrushTypeSolid;
 d2dColorToRGB(color, &(brush->R), &(brush->G), &(brush->B));
 brush->A = alpha;
}
