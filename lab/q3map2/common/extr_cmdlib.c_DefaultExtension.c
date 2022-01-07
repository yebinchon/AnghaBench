
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strlen (char*) ;

void DefaultExtension( char *path, const char *extension ){
 char *src;




 src = path + strlen( path ) - 1;

 while ( *src != '/' && *src != '\\' && src != path )
 {
  if ( *src == '.' ) {
   return;
  }
  src--;
 }

 strcat( path, extension );
}
