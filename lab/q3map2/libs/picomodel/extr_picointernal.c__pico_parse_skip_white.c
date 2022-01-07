
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cursor; int* buffer; int* max; int curLine; } ;
typedef TYPE_1__ picoParser_t ;



void _pico_parse_skip_white( picoParser_t *p, int *hasLFs ){

 if ( p == ((void*)0) || p->cursor == ((void*)0) ) {
  return;
 }


 while ( 1 )
 {

  if ( p->cursor < p->buffer ||
    p->cursor >= p->max ) {
   return;
  }

  if ( *p->cursor > 0x20 ) {
   break;
  }
  if ( *p->cursor == 0x00 ) {
   return;
  }


  if ( *p->cursor == '\n' ) {
   *hasLFs = 1;
   p->curLine++;
  }

  p->cursor++;
 }
}
