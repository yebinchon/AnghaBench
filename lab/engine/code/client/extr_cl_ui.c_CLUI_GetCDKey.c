
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Memcpy (char*,int *,int) ;
 char* Cvar_VariableString (char*) ;
 scalar_t__ UI_usesUniqueCDKey () ;
 int * cl_cdkey ;

__attribute__((used)) static void CLUI_GetCDKey( char *buf, int buflen ) {

 const char *gamedir;
 gamedir = Cvar_VariableString( "fs_game" );
 if (UI_usesUniqueCDKey() && gamedir[0] != 0) {
  Com_Memcpy( buf, &cl_cdkey[16], 16);
  buf[16] = 0;
 } else {
  Com_Memcpy( buf, cl_cdkey, 16);
  buf[16] = 0;
 }



}
