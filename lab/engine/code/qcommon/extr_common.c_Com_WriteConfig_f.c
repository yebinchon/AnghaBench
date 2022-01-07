
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int COM_CompareExtension (char*,char*) ;
 int COM_DefaultExtension (char*,int,char*) ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int Com_WriteConfigToFile (char*) ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,int ,int) ;

void Com_WriteConfig_f( void ) {
 char filename[MAX_QPATH];

 if ( Cmd_Argc() != 2 ) {
  Com_Printf( "Usage: writeconfig <filename>\n" );
  return;
 }

 Q_strncpyz( filename, Cmd_Argv(1), sizeof( filename ) );
 COM_DefaultExtension( filename, sizeof( filename ), ".cfg" );

 if (!COM_CompareExtension(filename, ".cfg"))
 {
  Com_Printf("Com_WriteConfig_f: Only the \".cfg\" extension is supported by this command!\n");
  return;
 }

 Com_Printf( "Writing %s.\n", filename );
 Com_WriteConfigToFile( filename );
}
