
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLEN_ERROR ;
 scalar_t__ flen ;

unsigned short sgetU2( unsigned char **bp ){
 unsigned char *buf = *bp;
 unsigned short i;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 i = ( buf[ 0 ] << 8 ) | buf[ 1 ];
 flen += 2;
 *bp += 2;
 return i;
}
