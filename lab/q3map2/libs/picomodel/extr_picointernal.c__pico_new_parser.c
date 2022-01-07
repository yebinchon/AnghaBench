
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tokenMax; char* buffer; char* cursor; int bufSize; char* max; int curLine; int * token; scalar_t__ tokenSize; } ;
typedef TYPE_1__ picoParser_t ;
typedef int picoByte_t ;


 void* _pico_alloc (int) ;
 int _pico_free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

picoParser_t *_pico_new_parser( picoByte_t *buffer, int bufSize ){
 picoParser_t *p;


 if ( buffer == ((void*)0) || bufSize <= 0 ) {
  return ((void*)0);
 }


 p = _pico_alloc( sizeof( picoParser_t ) );
 if ( p == ((void*)0) ) {
  return ((void*)0);
 }
 memset( p,0,sizeof( picoParser_t ) );


 p->tokenSize = 0;
 p->tokenMax = 1024;
 p->token = _pico_alloc( p->tokenMax );
 if ( p->token == ((void*)0) ) {
  _pico_free( p );
  return ((void*)0);
 }

 p->buffer = (char *)buffer;
 p->cursor = p->buffer;
 p->bufSize = bufSize;
 p->max = p->buffer + bufSize;
 p->curLine = 1;


 return p;
}
