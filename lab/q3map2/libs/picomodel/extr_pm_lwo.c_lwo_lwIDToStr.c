
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *lwo_lwIDToStr( unsigned int lwID ){
 static char lwIDStr[5];

 if ( !lwID ) {
  return "n/a";
 }

 lwIDStr[ 0 ] = (char)( ( lwID ) >> 24 );
 lwIDStr[ 1 ] = (char)( ( lwID ) >> 16 );
 lwIDStr[ 2 ] = (char)( ( lwID ) >> 8 );
 lwIDStr[ 3 ] = (char)( ( lwID ) );
 lwIDStr[ 4 ] = '\0';

 return lwIDStr;
}
