
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void vfsAddSlash( char *str ){
 int n = strlen( str );
 if ( n > 0 ) {
  if ( str[n - 1] != '\\' && str[n - 1] != '/' ) {
   strcat( str, "/" );
  }
 }
}
