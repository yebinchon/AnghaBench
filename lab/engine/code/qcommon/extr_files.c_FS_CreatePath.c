
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int path ;


 int Com_Error (int ,char*,char*) ;
 int Com_Printf (char*,char*) ;
 int ERR_FATAL ;
 int FS_ReplaceSeparators (char*) ;
 int MAX_INSTALL_PATH ;
 char PATH_SEP ;
 int Q_strncpyz (char*,char*,int) ;
 int Sys_Mkdir (char*) ;
 int qfalse ;
 int qtrue ;
 char* strchr (char*,char) ;
 scalar_t__ strstr (char*,char*) ;

qboolean FS_CreatePath (char *OSPath) {
 char *ofs;
 char path[MAX_INSTALL_PATH];



 if ( strstr( OSPath, ".." ) || strstr( OSPath, "::" ) ) {
  Com_Printf( "WARNING: refusing to create relative path \"%s\"\n", OSPath );
  return qtrue;
 }

 Q_strncpyz( path, OSPath, sizeof( path ) );
 FS_ReplaceSeparators( path );


 ofs = strchr( path, PATH_SEP );
 if ( ofs != ((void*)0) ) {
  ofs++;
 }

 for (; ofs != ((void*)0) && *ofs ; ofs++) {
  if (*ofs == PATH_SEP) {

   *ofs = 0;
   if (!Sys_Mkdir (path)) {
    Com_Error( ERR_FATAL, "FS_CreatePath: failed to create path \"%s\"",
     path );
   }
   *ofs = PATH_SEP;
  }
 }

 return qfalse;
}
