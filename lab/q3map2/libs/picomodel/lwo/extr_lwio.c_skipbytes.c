
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 int PICO_SEEK_CUR ;
 scalar_t__ _pico_memstream_seek (int *,int,int ) ;
 scalar_t__ flen ;

void skipbytes( picoMemStream_t *fp, int n ){
 if ( flen == FLEN_ERROR ) {
  return;
 }
 if ( _pico_memstream_seek( fp, n, PICO_SEEK_CUR ) ) {
  flen = FLEN_ERROR;
 }
 else{
  flen += n;
 }
}
