
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ curPos; scalar_t__ buffer; scalar_t__ bufSize; int flag; } ;
typedef TYPE_1__ picoMemStream_t ;


 int PICO_IOEOF ;
 int memcpy (void*,int,int) ;

int _pico_memstream_read( picoMemStream_t *s, void *buffer, int len ){
 int ret = 1;


 if ( s == ((void*)0) || buffer == ((void*)0) ) {
  return 0;
 }

 if ( s->curPos + len > s->buffer + s->bufSize ) {
  s->flag |= PICO_IOEOF;
  len = s->buffer + s->bufSize - s->curPos;
  ret = 0;
 }


 memcpy( buffer, s->curPos, len );
 s->curPos += len;
 return ret;
}
