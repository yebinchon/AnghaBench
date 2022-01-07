
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {scalar_t__ onClose; TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;
struct TYPE_8__ {TYPE_2__* parent; } ;
typedef TYPE_3__ itemDef_t ;


 int Item_RunScript (TYPE_3__*,scalar_t__) ;
 int WINDOW_VISIBLE ;

__attribute__((used)) static void Menu_RunCloseScript(menuDef_t *menu) {
 if (menu && menu->window.flags & WINDOW_VISIBLE && menu->onClose) {
  itemDef_t item;
    item.parent = menu;
    Item_RunScript(&item, menu->onClose);
 }
}
