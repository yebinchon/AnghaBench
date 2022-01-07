
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_11__ {double* focusColor; } ;
typedef TYPE_3__ menuDef_t ;
struct TYPE_10__ {int y; scalar_t__ x; scalar_t__ w; } ;
struct TYPE_9__ {int flags; int foreColor; } ;
struct TYPE_12__ {int textStyle; int textscale; TYPE_2__ textRect; scalar_t__ text; TYPE_1__ window; scalar_t__ parent; } ;
typedef TYPE_4__ itemDef_t ;
struct TYPE_13__ {int realTime; int (* drawText ) (scalar_t__,int ,int ,double*,char const*,int ,int ,int ) ;} ;


 TYPE_8__* DC ;
 char* Item_Multi_Setting (TYPE_4__*) ;
 int Item_Text_Paint (TYPE_4__*) ;
 int LerpColor (double*,double*,double*,double) ;
 int PULSE_DIVISOR ;
 int WINDOW_HASFOCUS ;
 int memcpy (double**,int *,int) ;
 double sin (int) ;
 int stub1 (scalar_t__,int ,int ,double*,char const*,int ,int ,int ) ;
 int stub2 (scalar_t__,int ,int ,double*,char const*,int ,int ,int ) ;

void Item_Multi_Paint(itemDef_t *item) {
 vec4_t newColor, lowLight;
 const char *text = "";
 menuDef_t *parent = (menuDef_t*)item->parent;

 if (item->window.flags & WINDOW_HASFOCUS) {
  lowLight[0] = 0.8 * parent->focusColor[0];
  lowLight[1] = 0.8 * parent->focusColor[1];
  lowLight[2] = 0.8 * parent->focusColor[2];
  lowLight[3] = 0.8 * parent->focusColor[3];
  LerpColor(parent->focusColor,lowLight,newColor,0.5+0.5*sin(DC->realTime / PULSE_DIVISOR));
 } else {
  memcpy(&newColor, &item->window.foreColor, sizeof(vec4_t));
 }

 text = Item_Multi_Setting(item);

 if (item->text) {
  Item_Text_Paint(item);
  DC->drawText(item->textRect.x + item->textRect.w + 8, item->textRect.y, item->textscale, newColor, text, 0, 0, item->textStyle);
 } else {
  DC->drawText(item->textRect.x, item->textRect.y, item->textscale, newColor, text, 0, 0, item->textStyle);
 }
}
