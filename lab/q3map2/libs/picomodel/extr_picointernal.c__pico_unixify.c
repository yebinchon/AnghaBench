
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void _pico_unixify( char *path ){
 if ( path == ((void*)0) ) {
  return;
 }
 while ( *path )
 {
  if ( *path == '\\' ) {
   *path = '/';
  }
  path++;
 }
}
