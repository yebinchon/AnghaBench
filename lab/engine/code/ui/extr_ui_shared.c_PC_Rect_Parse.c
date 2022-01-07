
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int w; int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qboolean ;


 scalar_t__ PC_Float_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean PC_Rect_Parse(int handle, rectDef_t *r) {
 if (PC_Float_Parse(handle, &r->x)) {
  if (PC_Float_Parse(handle, &r->y)) {
   if (PC_Float_Parse(handle, &r->w)) {
    if (PC_Float_Parse(handle, &r->h)) {
     return qtrue;
    }
   }
  }
 }
 return qfalse;
}
