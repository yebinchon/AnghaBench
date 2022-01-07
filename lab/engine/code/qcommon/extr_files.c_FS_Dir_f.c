
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int FS_FreeFileList (char**) ;
 char** FS_ListFiles (char*,char*,int*) ;

void FS_Dir_f( void ) {
 char *path;
 char *extension;
 char **dirnames;
 int ndirs;
 int i;

 if ( Cmd_Argc() < 2 || Cmd_Argc() > 3 ) {
  Com_Printf( "usage: dir <directory> [extension]\n" );
  return;
 }

 if ( Cmd_Argc() == 2 ) {
  path = Cmd_Argv( 1 );
  extension = "";
 } else {
  path = Cmd_Argv( 1 );
  extension = Cmd_Argv( 2 );
 }

 Com_Printf( "Directory of %s %s\n", path, extension );
 Com_Printf( "---------------\n" );

 dirnames = FS_ListFiles( path, extension, &ndirs );

 for ( i = 0; i < ndirs; i++ ) {
  Com_Printf( "%s\n", dirnames[i] );
 }
 FS_FreeFileList( dirnames );
}
