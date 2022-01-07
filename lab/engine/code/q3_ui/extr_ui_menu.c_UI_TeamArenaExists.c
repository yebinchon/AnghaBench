
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int dirlist ;


 int BASETA ;
 scalar_t__ Q_stricmp (char*,int ) ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;

__attribute__((used)) static qboolean UI_TeamArenaExists( void ) {
 int numdirs;
 char dirlist[2048];
 char *dirptr;
  char *descptr;
 int i;
 int dirlen;

 numdirs = trap_FS_GetFileList( "$modlist", "", dirlist, sizeof(dirlist) );
 dirptr = dirlist;
 for( i = 0; i < numdirs; i++ ) {
  dirlen = strlen( dirptr ) + 1;
    descptr = dirptr + dirlen;
  if (Q_stricmp(dirptr, BASETA) == 0) {
   return qtrue;
  }
    dirptr += dirlen + strlen(descptr) + 1;
 }
 return qfalse;
}
