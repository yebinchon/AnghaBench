
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {float* foreColor; int flags; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;


 int PC_Float_Parse (int,float*) ;
 int WINDOW_FORECOLORSET ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_forecolor( itemDef_t *item, int handle ) {
 int i;
 float f;

 for (i = 0; i < 4; i++) {
  if (!PC_Float_Parse(handle, &f)) {
   return qfalse;
  }
  item->window.foreColor[i] = f;
  item->window.flags |= WINDOW_FORECOLORSET;
 }
 return qtrue;
}
