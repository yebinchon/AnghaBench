
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int x; int w; int needsRedraw; } ;
struct TYPE_8__ {scalar_t__ orientation; scalar_t__ panelCount; int y1; int y2; int x1; int x2; int panels; } ;
typedef TYPE_1__ ScreenManager ;
typedef TYPE_2__ Panel ;


 int COLS ;
 scalar_t__ HORIZONTAL ;
 int LINES ;
 int Panel_move (TYPE_2__*,int,int) ;
 int Panel_resize (TYPE_2__*,int,int) ;
 int Vector_add (int ,TYPE_2__*) ;
 scalar_t__ Vector_get (int ,scalar_t__) ;

void ScreenManager_add(ScreenManager* this, Panel* item, int size) {
   if (this->orientation == HORIZONTAL) {
      int lastX = 0;
      if (this->panelCount > 0) {
         Panel* last = (Panel*) Vector_get(this->panels, this->panelCount - 1);
         lastX = last->x + last->w + 1;
      }
      int height = LINES - this->y1 + this->y2;
      if (size > 0) {
         Panel_resize(item, size, height);
      } else {
         Panel_resize(item, COLS-this->x1+this->x2-lastX, height);
      }
      Panel_move(item, lastX, this->y1);
   }

   Vector_add(this->panels, item);
   item->needsRedraw = 1;
   this->panelCount++;
}
