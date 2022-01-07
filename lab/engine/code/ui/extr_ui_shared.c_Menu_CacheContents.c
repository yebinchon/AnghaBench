
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int itemCount; scalar_t__* soundName; int * items; int window; } ;
typedef TYPE_1__ menuDef_t ;
struct TYPE_5__ {int (* registerSound ) (scalar_t__*,int ) ;} ;


 TYPE_3__* DC ;
 int Item_CacheContents (int ) ;
 int Window_CacheContents (int *) ;
 int qfalse ;
 int stub1 (scalar_t__*,int ) ;

__attribute__((used)) static void Menu_CacheContents(menuDef_t *menu) {
 if (menu) {
  int i;
  Window_CacheContents(&menu->window);
  for (i = 0; i < menu->itemCount; i++) {
   Item_CacheContents(menu->items[i]);
  }

  if (menu->soundName && *menu->soundName) {
   DC->registerSound(menu->soundName, qfalse);
  }
 }

}
