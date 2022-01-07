
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int moving; } ;
struct TYPE_9__ {int currentBar; } ;
struct TYPE_11__ {int moving; TYPE_1__ super; } ;
struct TYPE_10__ {int currentBar; } ;
typedef TYPE_2__ Panel ;
typedef TYPE_3__ MetersPanel ;
typedef TYPE_4__ ListItem ;


 int * CRT_colors ;
 int FunctionBar_draw (int ,int *) ;
 int Meters_movingBar ;
 size_t PANEL_SELECTION_FOCUS ;
 size_t PANEL_SELECTION_FOLLOW ;
 scalar_t__ Panel_getSelected (TYPE_2__*) ;
 int Panel_setDefaultBar (TYPE_2__*) ;
 int Panel_setSelectionColor (TYPE_2__*,int ) ;

void MetersPanel_setMoving(MetersPanel* this, bool moving) {
   Panel* super = (Panel*) this;
   this->moving = moving;
   ListItem* selected = (ListItem*)Panel_getSelected(super);
   if (selected) {
      selected->moving = moving;
   }
   if (!moving) {
      Panel_setSelectionColor(super, CRT_colors[PANEL_SELECTION_FOCUS]);
      Panel_setDefaultBar(super);
   } else {
      Panel_setSelectionColor(super, CRT_colors[PANEL_SELECTION_FOLLOW]);
      super->currentBar = Meters_movingBar;
   }
   FunctionBar_draw(this->super.currentBar, ((void*)0));
}
