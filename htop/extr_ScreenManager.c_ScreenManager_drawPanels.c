
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ h; scalar_t__ w; scalar_t__ x; int y; } ;
struct TYPE_5__ {int panelCount; scalar_t__ orientation; int panels; } ;
typedef TYPE_1__ ScreenManager ;
typedef TYPE_2__ Panel ;


 scalar_t__ HORIZONTAL ;
 int Panel_draw (TYPE_2__*,int) ;
 scalar_t__ Vector_get (int ,int) ;
 int mvvline (int ,scalar_t__,char,scalar_t__) ;

__attribute__((used)) static void ScreenManager_drawPanels(ScreenManager* this, int focus) {
   const int nPanels = this->panelCount;
   for (int i = 0; i < nPanels; i++) {
      Panel* panel = (Panel*) Vector_get(this->panels, i);
      Panel_draw(panel, i == focus);
      if (this->orientation == HORIZONTAL) {
         mvvline(panel->y, panel->x+panel->w, ' ', panel->h+1);
      }
   }
}
