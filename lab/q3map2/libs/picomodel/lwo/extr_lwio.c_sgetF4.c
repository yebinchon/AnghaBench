
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLEN_ERROR ;
 scalar_t__ flen ;
 int memcpy (float*,unsigned char*,int) ;
 int revbytes (float*,int,int) ;

float sgetF4( unsigned char **bp ){
 float f;

 if ( flen == FLEN_ERROR ) {
  return 0.0f;
 }
 memcpy( &f, *bp, 4 );
 revbytes( &f, 4, 1 );
 flen += 4;
 *bp += 4;
 return f;
}
