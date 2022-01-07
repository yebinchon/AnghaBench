
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLEN_ERROR ;
 scalar_t__ flen ;

unsigned char sgetU1( unsigned char **bp ){
 unsigned char c;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 c = **bp;
 flen += 1;
 ( *bp )++;
 return c;
}
