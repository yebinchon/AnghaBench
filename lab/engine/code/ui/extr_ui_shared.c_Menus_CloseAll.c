
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ window; } ;


 int Menu_RunCloseScript (TYPE_2__*) ;
 TYPE_2__* Menus ;
 int WINDOW_HASFOCUS ;
 int WINDOW_VISIBLE ;
 int menuCount ;

void Menus_CloseAll(void) {
  int i;
  for (i = 0; i < menuCount; i++) {
  Menu_RunCloseScript(&Menus[i]);
  Menus[i].window.flags &= ~(WINDOW_HASFOCUS | WINDOW_VISIBLE);
  }
}
