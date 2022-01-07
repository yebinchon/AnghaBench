
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* token; } ;
typedef TYPE_1__ picoParser_t ;


 int _pico_free (TYPE_1__*) ;

void _pico_free_parser( picoParser_t *p ){

 if ( p == ((void*)0) ) {
  return;
 }


 if ( p->token != ((void*)0) ) {
  _pico_free( p->token );
 }
 _pico_free( p );
}
