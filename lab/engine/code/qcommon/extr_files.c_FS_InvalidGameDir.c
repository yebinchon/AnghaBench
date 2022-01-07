
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 scalar_t__ FS_CheckDirTraversal (char const*) ;
 int qfalse ;
 int qtrue ;
 int strcmp (char const*,char*) ;
 scalar_t__ strstr (char const*,char*) ;

qboolean FS_InvalidGameDir( const char *gamedir ) {
 if ( !strcmp( gamedir, "." ) || !strcmp( gamedir, ".." )
  || !strcmp( gamedir, "/" ) || !strcmp( gamedir, "\\" )
  || strstr( gamedir, "/.." ) || strstr( gamedir, "\\.." )
  || FS_CheckDirTraversal( gamedir ) ) {
  return qtrue;
 }

 return qfalse;
}
