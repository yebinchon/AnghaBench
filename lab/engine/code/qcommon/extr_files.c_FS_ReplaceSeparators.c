
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 char PATH_SEP ;
 int memmove (char*,char*,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int strlen (char*) ;

__attribute__((used)) static void FS_ReplaceSeparators( char *path ) {
 char *s;
 qboolean lastCharWasSep = qfalse;

 for ( s = path ; *s ; s++ ) {
  if ( *s == '/' || *s == '\\' ) {
   if ( !lastCharWasSep ) {
    *s = PATH_SEP;
    lastCharWasSep = qtrue;
   } else {
    memmove (s, s + 1, strlen (s));
   }
  } else {
   lastCharWasSep = qfalse;
  }
 }
}
