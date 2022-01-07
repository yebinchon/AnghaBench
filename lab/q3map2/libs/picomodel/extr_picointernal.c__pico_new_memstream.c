
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bufSize; scalar_t__ flag; int * curPos; int * buffer; } ;
typedef TYPE_1__ picoMemStream_t ;
typedef int picoByte_t ;


 TYPE_1__* _pico_alloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

picoMemStream_t *_pico_new_memstream( picoByte_t *buffer, int bufSize ){
 picoMemStream_t *s;


 if ( buffer == ((void*)0) || bufSize <= 0 ) {
  return ((void*)0);
 }


 s = _pico_alloc( sizeof( picoMemStream_t ) );
 if ( s == ((void*)0) ) {
  return ((void*)0);
 }
 memset( s,0,sizeof( picoMemStream_t ) );


 s->buffer = buffer;
 s->curPos = buffer;
 s->bufSize = bufSize;
 s->flag = 0;


 return s;
}
