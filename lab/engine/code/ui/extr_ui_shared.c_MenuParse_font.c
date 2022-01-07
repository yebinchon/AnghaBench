
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_5__ {int font; } ;
typedef TYPE_2__ menuDef_t ;
typedef int itemDef_t ;
struct TYPE_4__ {scalar_t__ fontRegistered; int textFont; } ;
struct TYPE_6__ {TYPE_1__ Assets; int (* registerFont ) (int ,int,int *) ;} ;


 TYPE_3__* DC ;
 int PC_String_Parse (int,int *) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int stub1 (int ,int,int *) ;

qboolean MenuParse_font( itemDef_t *item, int handle ) {
 menuDef_t *menu = (menuDef_t*)item;
 if (!PC_String_Parse(handle, &menu->font)) {
  return qfalse;
 }
 if (!DC->Assets.fontRegistered) {
  DC->registerFont(menu->font, 48, &DC->Assets.textFont);
  DC->Assets.fontRegistered = qtrue;
 }
 return qtrue;
}
