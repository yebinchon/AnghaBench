
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLEN_ERROR ;
 scalar_t__ flen ;
 int memcpy (int*,unsigned char*,int) ;
 int revbytes (int*,int,int) ;

int sgetI4( unsigned char **bp ){
 int i;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 memcpy( &i, *bp, 4 );
 revbytes( &i, 4, 1 );
 flen += 4;
 *bp += 4;
 return i;
}
