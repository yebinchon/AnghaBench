
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GDir ;


 int PATH_MAX ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int Sys_Printf (char*,char const*) ;
 int VFS_MAXDIRS ;
 scalar_t__ g_bUsePak ;
 int g_dir_close (int *) ;
 int * g_dir_open (char const*,int ,int *) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 int g_numDirs ;
 char** g_strDirs ;
 char* g_strdup (char const*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int sprintf (char*,char*,char const*,char*) ;
 int strcpy (char*,char const*) ;
 char* strrchr (char*,char) ;
 int vfsAddSlash (char*) ;
 int vfsFixDOSName (char*) ;
 int vfsInitPakFile (char*) ;

void vfsInitDirectory( const char *path ){
 char filename[PATH_MAX];
 char *dirlist;
 GDir *dir;

 if ( g_numDirs == ( VFS_MAXDIRS - 1 ) ) {
  return;
 }

 Sys_Printf( "VFS Init: %s\n", path );

 strcpy( g_strDirs[g_numDirs], path );
 vfsFixDOSName( g_strDirs[g_numDirs] );
 vfsAddSlash( g_strDirs[g_numDirs] );
 g_numDirs++;

 if ( g_bUsePak ) {
  dir = g_dir_open( path, 0, ((void*)0) );

  if ( dir != ((void*)0) ) {
   while ( 1 )
   {
    const char* name = g_dir_read_name( dir );
    if ( name == ((void*)0) ) {
     break;
    }

    dirlist = g_strdup( name );

    {

     char *ext = strrchr( dirlist, '.' );

     if ( ext != ((void*)0) && ( !Q_stricmp( ext, ".pk3dir" ) || !Q_stricmp( ext, ".dpkdir" ) ) ) {
      if ( g_numDirs == VFS_MAXDIRS ) {
       continue;
      }
      snprintf( g_strDirs[g_numDirs], PATH_MAX, "%s/%s", path, name );
      g_strDirs[g_numDirs][PATH_MAX-1] = '\0';
      vfsFixDOSName( g_strDirs[g_numDirs] );
      vfsAddSlash( g_strDirs[g_numDirs] );
      ++g_numDirs;
     }

     if ( ext == ((void*)0) || ( Q_stricmp( ext, ".pk3" ) != 0 && Q_stricmp( ext, ".dpk" ) != 0 ) ) {
      continue;
     }
    }

    sprintf( filename, "%s/%s", path, dirlist );
    vfsInitPakFile( filename );

    g_free( dirlist );
   }
   g_dir_close( dir );
  }
 }
}
