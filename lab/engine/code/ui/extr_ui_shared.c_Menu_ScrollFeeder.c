
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {int itemCount; TYPE_3__** items; } ;
typedef TYPE_1__ menuDef_t ;
struct TYPE_5__ {int special; } ;


 int Item_ListBox_HandleKey (TYPE_3__*,int ,int ,int ) ;
 int K_DOWNARROW ;
 int K_UPARROW ;
 int qtrue ;

void Menu_ScrollFeeder(menuDef_t *menu, int feeder, qboolean down) {
 if (menu) {
  int i;
    for (i = 0; i < menu->itemCount; i++) {
   if (menu->items[i]->special == feeder) {
    Item_ListBox_HandleKey(menu->items[i], (down) ? K_DOWNARROW : K_UPARROW, qtrue, qtrue);
    return;
   }
  }
 }
}
