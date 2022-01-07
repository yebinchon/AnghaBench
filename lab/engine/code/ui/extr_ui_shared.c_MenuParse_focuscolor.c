
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {float* focusColor; } ;
typedef TYPE_1__ menuDef_t ;
typedef int itemDef_t ;


 int PC_Float_Parse (int,float*) ;
 int qfalse ;
 int qtrue ;

qboolean MenuParse_focuscolor( itemDef_t *item, int handle ) {
 int i;
 float f;
 menuDef_t *menu = (menuDef_t*)item;

 for (i = 0; i < 4; i++) {
  if (!PC_Float_Parse(handle, &f)) {
   return qfalse;
  }
  menu->focusColor[i] = f;
 }
 return qtrue;
}
