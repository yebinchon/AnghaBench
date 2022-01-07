
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float x; float y; } ;
struct TYPE_5__ {scalar_t__ border; scalar_t__ borderSize; TYPE_2__ rect; } ;
struct TYPE_7__ {int itemCount; int * items; TYPE_1__ window; } ;
typedef TYPE_3__ menuDef_t ;


 int Item_SetScreenCoords (int ,float,float) ;

void Menu_UpdatePosition(menuDef_t *menu) {
  int i;
  float x, y;

  if (menu == ((void*)0)) {
    return;
  }

  x = menu->window.rect.x;
  y = menu->window.rect.y;
  if (menu->window.border != 0) {
    x += menu->window.borderSize;
    y += menu->window.borderSize;
  }

  for (i = 0; i < menu->itemCount; i++) {
    Item_SetScreenCoords(menu->items[i], x, y);
  }
}
