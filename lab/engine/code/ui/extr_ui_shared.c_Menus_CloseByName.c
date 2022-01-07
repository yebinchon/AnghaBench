
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;


 int Menu_RunCloseScript (TYPE_2__*) ;
 TYPE_2__* Menus_FindByName (char const*) ;
 int WINDOW_HASFOCUS ;
 int WINDOW_VISIBLE ;

void Menus_CloseByName(const char *p) {
  menuDef_t *menu = Menus_FindByName(p);
  if (menu != ((void*)0)) {
  Menu_RunCloseScript(menu);
  menu->window.flags &= ~(WINDOW_VISIBLE | WINDOW_HASFOCUS);
  }
}
