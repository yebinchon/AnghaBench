
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long curPos; long buffer; } ;
typedef TYPE_1__ picoMemStream_t ;



long _pico_memstream_tell( picoMemStream_t *s ){

 if ( s == ((void*)0) ) {
  return -1;
 }

 return s->curPos - s->buffer;
}
