
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int curPos; int buffer; int bufSize; } ;
typedef TYPE_1__ picoMemStream_t ;


 int PICO_SEEK_CUR ;
 int PICO_SEEK_END ;
 int PICO_SEEK_SET ;

int _pico_memstream_seek( picoMemStream_t *s, long offset, int origin ){
 int overflow;


 if ( s == ((void*)0) ) {
  return -1;
 }

 if ( origin == PICO_SEEK_SET ) {
  s->curPos = s->buffer + offset;
  overflow = s->curPos - ( s->buffer + s->bufSize );
  if ( overflow > 0 ) {
   s->curPos = s->buffer + s->bufSize;
   return offset - overflow;
  }
  return 0;
 }
 else if ( origin == PICO_SEEK_CUR ) {
  s->curPos += offset;
  overflow = s->curPos - ( s->buffer + s->bufSize );
  if ( overflow > 0 ) {
   s->curPos = s->buffer + s->bufSize;
   return offset - overflow;
  }
  return 0;
 }
 else if ( origin == PICO_SEEK_END ) {
  s->curPos = ( s->buffer + s->bufSize ) - offset;
  overflow = s->buffer - s->curPos;
  if ( overflow > 0 ) {
   s->curPos = s->buffer;
   return offset - overflow;
  }
  return 0;
 }

 return -1;
}
