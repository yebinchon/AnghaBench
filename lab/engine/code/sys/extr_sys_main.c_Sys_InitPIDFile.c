
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int modName ;
typedef int message ;


 int Com_sprintf (char*,int,char*,char*) ;
 int Cvar_Set (char*,char*) ;
 scalar_t__ DR_YES ;
 int DT_YES_NO ;
 int FS_GetModDescription (char const*,char*,int) ;
 int MAX_OSPATH ;
 int Q_CleanStr (char*) ;
 scalar_t__ Sys_Dialog (int ,char*,char*) ;
 scalar_t__ Sys_WritePIDFile (char const*) ;

void Sys_InitPIDFile( const char *gamedir ) {
 if( Sys_WritePIDFile( gamedir ) ) {

  char message[1024];
  char modName[MAX_OSPATH];

  FS_GetModDescription( gamedir, modName, sizeof ( modName ) );
  Q_CleanStr( modName );

  Com_sprintf( message, sizeof (message), "The last time %s ran, "
   "it didn't exit properly. This may be due to inappropriate video "
   "settings. Would you like to start with \"safe\" video settings?", modName );

  if( Sys_Dialog( DT_YES_NO, message, "Abnormal Exit" ) == DR_YES ) {
   Cvar_Set( "com_abnormalExit", "1" );
  }

 }
}
