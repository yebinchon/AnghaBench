
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {double R; double G; double B; double A; int Type; } ;
typedef TYPE_1__ uiDrawBrush ;


 int uiDrawBrushTypeSolid ;

__attribute__((used)) static void setSolidBrush(uiDrawBrush *brush, uint32_t color, double alpha)
{
 uint8_t component;

 brush->Type = uiDrawBrushTypeSolid;
 component = (uint8_t) ((color >> 16) & 0xFF);
 brush->R = ((double) component) / 255;
 component = (uint8_t) ((color >> 8) & 0xFF);
 brush->G = ((double) component) / 255;
 component = (uint8_t) (color & 0xFF);
 brush->B = ((double) component) / 255;
 brush->A = alpha;
}
