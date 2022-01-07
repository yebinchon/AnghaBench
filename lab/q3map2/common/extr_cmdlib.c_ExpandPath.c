
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* qdir ;
 int sprintf (char*,char*,char*,char const*) ;
 int strcpy (char*,char const*) ;

char *ExpandPath( const char *path ){
 static char full[1024];
 if ( path[0] == '/' || path[0] == '\\' || path[1] == ':' ) {
  strcpy( full, path );
  return full;
 }
 sprintf( full, "%s%s", qdir, path );
 return full;
}
