
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pico_little_short (unsigned short) ;

__attribute__((used)) static unsigned char *GetWord( unsigned char *bufptr, int *out ){
 if ( bufptr == ((void*)0) ) {
  return ((void*)0);
 }
 *out = _pico_little_short( *(unsigned short *)bufptr );
 return( bufptr + 2 );
}
