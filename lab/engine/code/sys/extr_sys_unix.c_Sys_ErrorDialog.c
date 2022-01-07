
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 unsigned int CON_LogRead (char*,int) ;
 int Com_Printf (char*,char const*) ;
 char* Cvar_VariableString (char*) ;
 int DT_ERROR ;
 char* FS_BuildOSPath (char const*,char const*,char const*) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int Sys_Dialog (int ,int ,char*) ;
 int Sys_Mkdir (char const*) ;
 int Sys_Print (int ) ;
 int close (int) ;
 int open (char*,int,int) ;
 int va (char*,char const*,...) ;
 unsigned int write (int,char*,unsigned int) ;

void Sys_ErrorDialog( const char *error )
{
 char buffer[ 1024 ];
 unsigned int size;
 int f = -1;
 const char *homepath = Cvar_VariableString( "fs_homepath" );
 const char *gamedir = Cvar_VariableString( "fs_game" );
 const char *fileName = "crashlog.txt";
 char *dirpath = FS_BuildOSPath( homepath, gamedir, "");
 char *ospath = FS_BuildOSPath( homepath, gamedir, fileName );

 Sys_Print( va( "%s\n", error ) );


 Sys_Dialog( DT_ERROR, va( "%s. See \"%s\" for details.", error, ospath ), "Error" );




 if(!Sys_Mkdir(homepath))
 {
  Com_Printf("ERROR: couldn't create path '%s' for crash log.\n", homepath);
  return;
 }

 if(!Sys_Mkdir(dirpath))
 {
  Com_Printf("ERROR: couldn't create path '%s' for crash log.\n", dirpath);
  return;
 }




 f = open( ospath, O_CREAT | O_TRUNC | O_WRONLY, 0640 );
 if( f == -1 )
 {
  Com_Printf( "ERROR: couldn't open %s\n", fileName );
  return;
 }


 while( ( size = CON_LogRead( buffer, sizeof( buffer ) ) ) > 0 ) {
  if( write( f, buffer, size ) != size ) {
   Com_Printf( "ERROR: couldn't fully write to %s\n", fileName );
   break;
  }
 }

 close( f );
}
