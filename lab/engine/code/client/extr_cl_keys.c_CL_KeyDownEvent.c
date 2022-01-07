
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; scalar_t__ demoplaying; } ;
struct TYPE_3__ {int repeats; int down; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CA_DISCONNECTED ;
 int CGAME_EVENT_NONE ;
 int CG_EVENT_HANDLING ;
 int CG_KEY_EVENT ;
 int CL_Disconnect_f () ;
 int CL_ParseBinding (int,int ,unsigned int) ;
 int Con_ToggleConsole_f () ;
 int Console_Key (int) ;
 int Cvar_Set (char*,char*) ;
 int Cvar_SetValue (char*,int) ;
 int Cvar_VariableIntegerValue (char*) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int KEYCATCH_CGAME ;
 int KEYCATCH_CONSOLE ;
 int KEYCATCH_MESSAGE ;
 int KEYCATCH_UI ;
 size_t K_ALT ;
 int K_CONSOLE ;
 int K_ENTER ;
 int K_ESCAPE ;
 int K_MOUSE1 ;
 size_t K_SHIFT ;
 int Key_ClearStates () ;
 int Key_GetCatcher () ;
 int Key_SetCatcher (int) ;
 int Message_Key (int) ;
 int S_StopAllSounds () ;
 int UIMENU_INGAME ;
 int UIMENU_MAIN ;
 int UI_KEY_EVENT ;
 int UI_SET_ACTIVE_MENU ;
 int VM_Call (scalar_t__,int ,int,...) ;
 int anykeydown ;
 scalar_t__ cgvm ;
 TYPE_2__ clc ;
 TYPE_1__* keys ;
 int qtrue ;
 scalar_t__ uivm ;

void CL_KeyDownEvent( int key, unsigned time )
{
 keys[key].down = qtrue;
 keys[key].repeats++;
 if( keys[key].repeats == 1 )
  anykeydown++;

 if( keys[K_ALT].down && key == K_ENTER )
 {

  if ( keys[K_ENTER].repeats > 1 ) {
   return;
  }

  Cvar_SetValue( "r_fullscreen",
   !Cvar_VariableIntegerValue( "r_fullscreen" ) );
  return;
 }


 if( key == K_CONSOLE || ( keys[K_SHIFT].down && key == K_ESCAPE ) )
 {
  Con_ToggleConsole_f ();
  Key_ClearStates ();
  return;
 }



 if ( ( key < 128 || key == K_MOUSE1 ) &&
  ( clc.demoplaying || clc.state == CA_CINEMATIC ) && Key_GetCatcher( ) == 0 ) {

  if (Cvar_VariableValue ("com_cameraMode") == 0) {
   Cvar_Set ("nextdemo","");
   key = K_ESCAPE;
  }
 }


 if ( key == K_ESCAPE ) {
  if ( Key_GetCatcher( ) & KEYCATCH_MESSAGE ) {

   Message_Key( key );
   return;
  }


  if (Key_GetCatcher( ) & KEYCATCH_CGAME) {
   Key_SetCatcher( Key_GetCatcher( ) & ~KEYCATCH_CGAME );
   VM_Call (cgvm, CG_EVENT_HANDLING, CGAME_EVENT_NONE);
   return;
  }

  if ( !( Key_GetCatcher( ) & KEYCATCH_UI ) ) {
   if ( clc.state == CA_ACTIVE && !clc.demoplaying ) {
    VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_INGAME );
   }
   else if ( clc.state != CA_DISCONNECTED ) {
    CL_Disconnect_f();
    S_StopAllSounds();
    VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
   }
   return;
  }

  VM_Call( uivm, UI_KEY_EVENT, key, qtrue );
  return;
 }


 CL_ParseBinding( key, qtrue, time );


 if ( Key_GetCatcher( ) & KEYCATCH_CONSOLE ) {
  Console_Key( key );
 } else if ( Key_GetCatcher( ) & KEYCATCH_UI ) {
  if ( uivm ) {
   VM_Call( uivm, UI_KEY_EVENT, key, qtrue );
  }
 } else if ( Key_GetCatcher( ) & KEYCATCH_CGAME ) {
  if ( cgvm ) {
   VM_Call( cgvm, CG_KEY_EVENT, key, qtrue );
  }
 } else if ( Key_GetCatcher( ) & KEYCATCH_MESSAGE ) {
  Message_Key( key );
 } else if ( clc.state == CA_DISCONNECTED ) {
  Console_Key( key );
 }
}
