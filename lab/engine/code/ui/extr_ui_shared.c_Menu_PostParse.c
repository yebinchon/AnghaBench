
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int w; int h; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {TYPE_1__ rect; } ;
struct TYPE_8__ {TYPE_2__ window; scalar_t__ fullScreen; } ;
typedef TYPE_3__ menuDef_t ;


 int Menu_UpdatePosition (TYPE_3__*) ;

void Menu_PostParse(menuDef_t *menu) {
 if (menu == ((void*)0)) {
  return;
 }
 if (menu->fullScreen) {
  menu->window.rect.x = 0;
  menu->window.rect.y = 0;
  menu->window.rect.w = 640;
  menu->window.rect.h = 480;
 }
 Menu_UpdatePosition(menu);
}
