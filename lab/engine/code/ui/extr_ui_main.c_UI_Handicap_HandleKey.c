
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Com_Clamp (int,int,int ) ;
 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_SetValue (char*,int) ;
 int trap_Cvar_VariableValue (char*) ;

__attribute__((used)) static qboolean UI_Handicap_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  int h;

  h = Com_Clamp( 5, 100, trap_Cvar_VariableValue("handicap") );
  h += 5 * select;

  if (h > 100) {
   h = 5;
  } else if (h < 5) {
   h = 100;
  }

  trap_Cvar_SetValue( "handicap", h );
  return qtrue;
 }
 return qfalse;
}
