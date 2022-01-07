
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLEN_ERROR ;
 scalar_t__ flen ;

int sgetI1( unsigned char **bp ){
 int i;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 i = **bp;
 if ( i > 127 ) {
  i -= 256;
 }
 flen += 1;
 ( *bp )++;
 return i;
}
