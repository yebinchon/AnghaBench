
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 int PICO_SEEK_SET ;
 char* _pico_alloc (int) ;
 int _pico_memstream_getc (int *) ;
 int _pico_memstream_read (int *,char*,int) ;
 scalar_t__ _pico_memstream_seek (int *,int,int ) ;
 int _pico_memstream_tell (int *) ;
 scalar_t__ flen ;

char *getS0( picoMemStream_t *fp ){
 char *s;
 int i, c, len, pos;

 if ( flen == FLEN_ERROR ) {
  return ((void*)0);
 }

 pos = _pico_memstream_tell( fp );
 for ( i = 1; ; i++ ) {
  c = _pico_memstream_getc( fp );
  if ( c <= 0 ) {
   break;
  }
 }
 if ( c < 0 ) {
  flen = FLEN_ERROR;
  return ((void*)0);
 }

 if ( i == 1 ) {
  if ( _pico_memstream_seek( fp, pos + 2, PICO_SEEK_SET ) ) {
   flen = FLEN_ERROR;
  }
  else{
   flen += 2;
  }
  return ((void*)0);
 }

 len = i + ( i & 1 );
 s = _pico_alloc( len );
 if ( !s ) {
  flen = FLEN_ERROR;
  return ((void*)0);
 }

 if ( _pico_memstream_seek( fp, pos, PICO_SEEK_SET ) ) {
  flen = FLEN_ERROR;
  return ((void*)0);
 }
 if ( 1 != _pico_memstream_read( fp, s, len ) ) {
  flen = FLEN_ERROR;
  return ((void*)0);
 }

 flen += len;
 return s;
}
