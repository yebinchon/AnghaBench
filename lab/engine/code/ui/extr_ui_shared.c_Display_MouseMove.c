
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {int x; int y; } ;
struct TYPE_9__ {int flags; TYPE_1__ rect; } ;
struct TYPE_10__ {TYPE_2__ window; } ;
typedef TYPE_3__ menuDef_t ;


 TYPE_3__* Menu_GetFocused () ;
 int Menu_HandleMouseMove (TYPE_3__*,int,int) ;
 int Menu_UpdatePosition (TYPE_3__*) ;
 TYPE_3__* Menus ;
 int WINDOW_POPUP ;
 int menuCount ;
 int qtrue ;

qboolean Display_MouseMove(void *p, int x, int y) {
 int i;
 menuDef_t *menu = p;

 if (menu == ((void*)0)) {
    menu = Menu_GetFocused();
  if (menu) {
   if (menu->window.flags & WINDOW_POPUP) {
    Menu_HandleMouseMove(menu, x, y);
    return qtrue;
   }
  }
  for (i = 0; i < menuCount; i++) {
   Menu_HandleMouseMove(&Menus[i], x, y);
  }
 } else {
  menu->window.rect.x += x;
  menu->window.rect.y += y;
  Menu_UpdatePosition(menu);
 }
  return qtrue;

}
