
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 scalar_t__ _pico_memstream_read (int *,int*,int) ;

int _pico_memstream_getc( picoMemStream_t *s ){
 int c = 0;


 if ( s == ((void*)0) ) {
  return -1;
 }


 if ( _pico_memstream_read( s, &c, 1 ) == 0 ) {
  return -1;
 }

 return c;
}
