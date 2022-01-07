
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panelCount; int panels; } ;
typedef TYPE_1__ ScreenManager ;
typedef int Panel ;


 scalar_t__ Vector_remove (int ,int) ;
 int assert (int) ;

Panel* ScreenManager_remove(ScreenManager* this, int idx) {
   assert(this->panelCount > idx);
   Panel* panel = (Panel*) Vector_remove(this->panels, idx);
   this->panelCount--;
   return panel;
}
