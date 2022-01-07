
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ FLEN_ERROR ;
 int _pico_memstream_read (int *,unsigned short*,int) ;
 scalar_t__ flen ;
 int revbytes (unsigned short*,int,int) ;

unsigned short getU2( picoMemStream_t *fp ){
 unsigned short i;

 if ( flen == FLEN_ERROR ) {
  return 0;
 }
 if ( 1 != _pico_memstream_read( fp, &i, 2 ) ) {
  flen = FLEN_ERROR;
  return 0;
 }
 revbytes( &i, 2, 1 );
 flen += 2;
 return i;
}
