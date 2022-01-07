
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ currentCrosshair; } ;


 scalar_t__ NUM_CROSSHAIRS ;
 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_SetValue (char*,scalar_t__) ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_Crosshair_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  uiInfo.currentCrosshair += select;

  if (uiInfo.currentCrosshair >= NUM_CROSSHAIRS) {
   uiInfo.currentCrosshair = 0;
  } else if (uiInfo.currentCrosshair < 0) {
   uiInfo.currentCrosshair = NUM_CROSSHAIRS - 1;
  }
  trap_Cvar_SetValue("cg_drawCrosshair", uiInfo.currentCrosshair);
  return qtrue;
 }
 return qfalse;
}
