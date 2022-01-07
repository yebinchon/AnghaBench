
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;

void DefaultPath( char *path, const char *basepath ){
 char temp[128];

 if ( path[ 0 ] == '/' || path[ 0 ] == '\\' ) {
  return;
 }
 strcpy( temp,path );
 strcpy( path,basepath );
 strcat( path,temp );
}
