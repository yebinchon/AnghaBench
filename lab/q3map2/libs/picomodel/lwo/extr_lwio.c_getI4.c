
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 int _pico_memstream_read (int *,int*,int) ;
 scalar_t__ flen ;
 int revbytes (int*,int,int) ;

int getI4( picoMemStream_t *fp ){
 int i;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 if ( 1 != _pico_memstream_read( fp, &i, 4 ) ) {
  flen = FLEN_ERROR;
  return 0;
 }
 revbytes( &i, 4, 1 );
 flen += 4;
 return i;
}
