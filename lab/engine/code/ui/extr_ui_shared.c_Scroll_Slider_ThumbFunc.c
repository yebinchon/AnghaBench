
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* item; } ;
typedef TYPE_5__ scrollInfo_t ;
struct TYPE_13__ {float maxVal; float minVal; } ;
typedef TYPE_6__ editFieldDef_t ;
struct TYPE_14__ {float cursorx; int (* setCVar ) (int ,int ) ;} ;
struct TYPE_9__ {float x; } ;
struct TYPE_10__ {TYPE_2__ rect; } ;
struct TYPE_8__ {int x; int w; } ;
struct TYPE_11__ {int cvar; TYPE_3__ window; TYPE_1__ textRect; scalar_t__ text; TYPE_6__* typeData; } ;


 TYPE_7__* DC ;
 float SLIDER_WIDTH ;
 int stub1 (int ,int ) ;
 int va (char*,float) ;

__attribute__((used)) static void Scroll_Slider_ThumbFunc(void *p) {
 float x, value, cursorx;
 scrollInfo_t *si = (scrollInfo_t*)p;
 editFieldDef_t *editDef = si->item->typeData;

 if (si->item->text) {
  x = si->item->textRect.x + si->item->textRect.w + 8;
 } else {
  x = si->item->window.rect.x;
 }

 cursorx = DC->cursorx;

 if (cursorx < x) {
  cursorx = x;
 } else if (cursorx > x + SLIDER_WIDTH) {
  cursorx = x + SLIDER_WIDTH;
 }
 value = cursorx - x;
 value /= SLIDER_WIDTH;
 value *= (editDef->maxVal - editDef->minVal);
 value += editDef->minVal;
 DC->setCVar(si->item->cvar, va("%f", value));
}
