
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int w; int h; int needsRedraw; int selectionColor; int * currentBar; int * defaultBar; int header; scalar_t__ oldSelected; scalar_t__ selected; scalar_t__ scrollH; scalar_t__ scrollV; int items; int * eventHandlerState; } ;
typedef TYPE_1__ Panel ;
typedef int ObjectClass ;
typedef int FunctionBar ;


 int * CRT_colors ;
 int DEFAULT_SIZE ;
 size_t PANEL_SELECTION_FOCUS ;
 int RichString_beginAllocated (int ) ;
 int Vector_new (int *,int,int ) ;

void Panel_init(Panel* this, int x, int y, int w, int h, ObjectClass* type, bool owner, FunctionBar* fuBar) {
   this->x = x;
   this->y = y;
   this->w = w;
   this->h = h;
   this->eventHandlerState = ((void*)0);
   this->items = Vector_new(type, owner, DEFAULT_SIZE);
   this->scrollV = 0;
   this->scrollH = 0;
   this->selected = 0;
   this->oldSelected = 0;
   this->needsRedraw = 1;
   RichString_beginAllocated(this->header);
   this->defaultBar = fuBar;
   this->currentBar = fuBar;
   this->selectionColor = CRT_colors[PANEL_SELECTION_FOCUS];
}
