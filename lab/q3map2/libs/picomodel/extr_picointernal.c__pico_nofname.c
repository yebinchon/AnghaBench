
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int _pico_nofname( const char *path, char *dest, int destSize ){
 int left = destSize;
 char *temp = dest;

 while ( ( *dest = *path ) != '\0' )
 {
  if ( *dest == '/' || *dest == '\\' ) {
   temp = ( dest + 1 );
   *dest = '/';
  }
  dest++; path++;

  if ( --left < 1 ) {
   *temp = '\0';
   return 0;
  }
 }
 *temp = '\0';
 return 1;
}
