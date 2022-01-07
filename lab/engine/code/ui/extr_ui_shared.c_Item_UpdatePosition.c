
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {float x; float y; } ;
struct TYPE_7__ {scalar_t__ border; scalar_t__ borderSize; TYPE_2__ rect; } ;
struct TYPE_9__ {TYPE_1__ window; } ;
typedef TYPE_3__ menuDef_t ;
struct TYPE_10__ {TYPE_3__* parent; } ;
typedef TYPE_4__ itemDef_t ;


 int Item_SetScreenCoords (TYPE_4__*,float,float) ;

void Item_UpdatePosition(itemDef_t *item) {
  float x, y;
  menuDef_t *menu;

  if (item == ((void*)0) || item->parent == ((void*)0)) {
    return;
  }

  menu = item->parent;

  x = menu->window.rect.x;
  y = menu->window.rect.y;

  if (menu->window.border != 0) {
    x += menu->window.borderSize;
    y += menu->window.borderSize;
  }

  Item_SetScreenCoords(item, x, y);

}
