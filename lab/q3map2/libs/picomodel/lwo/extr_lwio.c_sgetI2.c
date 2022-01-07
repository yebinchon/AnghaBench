
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLEN_ERROR ;
 scalar_t__ flen ;
 int memcpy (short*,unsigned char*,int) ;
 int revbytes (short*,int,int) ;

short sgetI2( unsigned char **bp ){
 short i;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 memcpy( &i, *bp, 2 );
 revbytes( &i, 2, 1 );
 flen += 2;
 *bp += 2;
 return i;
}
