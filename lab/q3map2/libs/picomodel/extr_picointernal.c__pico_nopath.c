
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strchr (char const*,char) ;
 int strlen (char const*) ;

const char *_pico_nopath( const char *path ){
 const char *src;

 if ( path == ((void*)0) ) {
  return "";
 }
 if ( !strchr( path,'/' ) && !strchr( path,'\\' ) ) {
  return ( path );
 }

 src = path + ( strlen( path ) - 1 );
 while ( ( src-- ) != path )
 {
  if ( *src == '/' || *src == '\\' ) {
   return ( ++src );
  }
 }
 return "";
}
