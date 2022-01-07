
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_ARCHIVE ;
 int Com_Memcpy (scalar_t__*,char*,int) ;
 char* Cvar_VariableString (char*) ;
 scalar_t__ UI_usesUniqueCDKey () ;
 scalar_t__* cl_cdkey ;
 int cvar_modifiedFlags ;

__attribute__((used)) static void CLUI_SetCDKey( char *buf ) {
 const char *gamedir;
 gamedir = Cvar_VariableString( "fs_game" );
 if (UI_usesUniqueCDKey() && gamedir[0] != 0) {
  Com_Memcpy( &cl_cdkey[16], buf, 16 );
  cl_cdkey[32] = 0;

  cvar_modifiedFlags |= CVAR_ARCHIVE;
 } else {
  Com_Memcpy( cl_cdkey, buf, 16 );

  cvar_modifiedFlags |= CVAR_ARCHIVE;
 }
}
