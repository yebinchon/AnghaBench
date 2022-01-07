
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int effectsColor; } ;


 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_SetValue (char*,int ) ;
 TYPE_1__ uiInfo ;
 int * uitogamecode ;

__attribute__((used)) static qboolean UI_Effects_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  uiInfo.effectsColor += select;

  if( uiInfo.effectsColor > 6 ) {
   uiInfo.effectsColor = 0;
  } else if (uiInfo.effectsColor < 0) {
   uiInfo.effectsColor = 6;
  }

  trap_Cvar_SetValue( "color1", uitogamecode[uiInfo.effectsColor] );
  return qtrue;
 }
 return qfalse;
}
