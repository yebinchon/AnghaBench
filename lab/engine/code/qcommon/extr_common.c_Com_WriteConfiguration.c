
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int integer; } ;


 char const* BASEGAME ;
 int CVAR_ARCHIVE ;
 int Com_WriteCDKey (char const*,int *) ;
 int Com_WriteConfigToFile (int ) ;
 char* Cvar_VariableString (char*) ;
 int Q3CONFIG_CFG ;
 scalar_t__ UI_usesUniqueCDKey () ;
 int * cl_cdkey ;
 int com_fullyInitialized ;
 TYPE_2__* com_standalone ;
 TYPE_1__* com_writeConfig ;
 int cvar_modifiedFlags ;

void Com_WriteConfiguration( void ) {


 if ( !com_fullyInitialized ) {
  return;
 }

 if ( !(cvar_modifiedFlags & CVAR_ARCHIVE ) ) {
  return;
 }
 cvar_modifiedFlags &= ~CVAR_ARCHIVE;

 if ( !com_writeConfig->integer ) {
  return;
 }

 Com_WriteConfigToFile( Q3CONFIG_CFG );



 if(!com_standalone->integer)
 {
  const char *gamedir;
  gamedir = Cvar_VariableString( "fs_game" );
  if (UI_usesUniqueCDKey() && gamedir[0] != 0) {
   Com_WriteCDKey( gamedir, &cl_cdkey[16] );
  } else {
   Com_WriteCDKey( BASEGAME, cl_cdkey );
  }
 }

}
