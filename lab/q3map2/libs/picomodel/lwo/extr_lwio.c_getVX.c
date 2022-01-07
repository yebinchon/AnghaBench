
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 scalar_t__ _pico_memstream_error (int *) ;
 int _pico_memstream_getc (int *) ;
 scalar_t__ flen ;

int getVX( picoMemStream_t *fp ){
 int i, c;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }

 c = _pico_memstream_getc( fp );
 if ( c != 0xFF ) {
  i = c << 8;
  c = _pico_memstream_getc( fp );
  i |= c;
  flen += 2;
 }
 else {
  c = _pico_memstream_getc( fp );
  i = c << 16;
  c = _pico_memstream_getc( fp );
  i |= c << 8;
  c = _pico_memstream_getc( fp );
  i |= c;
  flen += 4;
 }

 if ( _pico_memstream_error( fp ) ) {
  flen = FLEN_ERROR;
  return 0;
 }
 return i;
}
