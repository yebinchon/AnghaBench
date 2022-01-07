
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 int ART_MENU0 ;
 int ART_MENU1 ;
 int ART_NEXT0 ;
 int ART_NEXT1 ;
 int ART_REPLAY0 ;
 int ART_REPLAY1 ;
 int qfalse ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int trap_R_RegisterShaderNoMip (int ) ;
 int trap_S_RegisterSound (char*,int ) ;
 int * ui_medalPicNames ;
 char** ui_medalSounds ;

void UI_SPPostgameMenu_Cache( void ) {
 int n;
 qboolean buildscript;

 buildscript = trap_Cvar_VariableValue("com_buildscript");

 trap_R_RegisterShaderNoMip( ART_MENU0 );
 trap_R_RegisterShaderNoMip( ART_MENU1 );
 trap_R_RegisterShaderNoMip( ART_REPLAY0 );
 trap_R_RegisterShaderNoMip( ART_REPLAY1 );
 trap_R_RegisterShaderNoMip( ART_NEXT0 );
 trap_R_RegisterShaderNoMip( ART_NEXT1 );
 for( n = 0; n < 6; n++ ) {
  trap_R_RegisterShaderNoMip( ui_medalPicNames[n] );
  trap_S_RegisterSound( ui_medalSounds[n], qfalse );
 }

 if( buildscript ) {
  trap_S_RegisterSound( "music/loss.wav", qfalse );
  trap_S_RegisterSound( "music/win.wav", qfalse );
  trap_S_RegisterSound( "sound/player/announce/youwin.wav", qfalse );
 }
}
