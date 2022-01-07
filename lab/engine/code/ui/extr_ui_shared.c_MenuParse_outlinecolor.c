
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int outlineColor; } ;
struct TYPE_4__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;
typedef int itemDef_t ;


 int PC_Color_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean MenuParse_outlinecolor( itemDef_t *item, int handle ) {
 menuDef_t *menu = (menuDef_t*)item;
 if (!PC_Color_Parse(handle, &menu->window.outlineColor)){
  return qfalse;
 }
 return qtrue;
}
