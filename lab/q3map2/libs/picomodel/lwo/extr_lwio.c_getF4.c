
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 int _pico_memstream_read (int *,float*,int) ;
 scalar_t__ flen ;
 int revbytes (float*,int,int) ;

float getF4( picoMemStream_t *fp ){
 float f;

 if ( flen == FLEN_ERROR ) {
  return 0.0f;
 }
 if ( 1 != _pico_memstream_read( fp, &f, 4 ) ) {
  flen = FLEN_ERROR;
  return 0.0f;
 }
 revbytes( &f, 4, 1 );
 flen += 4;
 return f;
}
