
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int w; int x; } ;
struct TYPE_6__ {int x1; int y1; int x2; int y2; int panelCount; scalar_t__ orientation; int panels; } ;
typedef TYPE_1__ ScreenManager ;
typedef TYPE_2__ Panel ;


 int COLS ;
 scalar_t__ HORIZONTAL ;
 int LINES ;
 int Panel_move (TYPE_2__*,int,int) ;
 int Panel_resize (TYPE_2__*,int,int) ;
 scalar_t__ Vector_get (int ,int) ;

void ScreenManager_resize(ScreenManager* this, int x1, int y1, int x2, int y2) {
   this->x1 = x1;
   this->y1 = y1;
   this->x2 = x2;
   this->y2 = y2;
   int panels = this->panelCount;
   if (this->orientation == HORIZONTAL) {
      int lastX = 0;
      for (int i = 0; i < panels - 1; i++) {
         Panel* panel = (Panel*) Vector_get(this->panels, i);
         Panel_resize(panel, panel->w, LINES-y1+y2);
         Panel_move(panel, lastX, y1);
         lastX = panel->x + panel->w + 1;
      }
      Panel* panel = (Panel*) Vector_get(this->panels, panels-1);
      Panel_resize(panel, COLS-x1+x2-lastX, LINES-y1+y2);
      Panel_move(panel, lastX, y1);
   }

}
