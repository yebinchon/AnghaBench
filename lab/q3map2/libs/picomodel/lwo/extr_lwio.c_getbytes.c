
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 void* _pico_alloc (int) ;
 int _pico_free (void*) ;
 int _pico_memstream_read (int *,void*,int) ;
 scalar_t__ flen ;

void *getbytes( picoMemStream_t *fp, int size ){
 void *data;

 if ( flen == FLEN_ERROR ) {
  return ((void*)0);
 }
 if ( size < 0 ) {
  flen = FLEN_ERROR;
  return ((void*)0);
 }
 data = _pico_alloc( size );
 if ( !data ) {
  flen = FLEN_ERROR;
  return ((void*)0);
 }
 if ( 1 != _pico_memstream_read( fp, data, size ) ) {
  flen = FLEN_ERROR;
  _pico_free( data );
  return ((void*)0);
 }

 flen += size;
 return data;
}
