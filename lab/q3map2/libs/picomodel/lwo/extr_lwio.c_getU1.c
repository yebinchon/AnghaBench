
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 int _pico_memstream_getc (int *) ;
 scalar_t__ flen ;

unsigned char getU1( picoMemStream_t *fp ){
 int i;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 i = _pico_memstream_getc( fp );
 if ( i < 0 ) {
  flen = FLEN_ERROR;
  return 0;
 }
 flen += 1;
 return i;
}
