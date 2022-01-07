
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; struct TYPE_4__* name; struct TYPE_4__* ord; } ;
typedef TYPE_1__ lwPlugin ;


 int _pico_free (TYPE_1__*) ;

void lwFreePlugin( lwPlugin *p ){
 if ( p ) {
  if ( p->ord ) {
   _pico_free( p->ord );
  }
  if ( p->name ) {
   _pico_free( p->name );
  }
  if ( p->data ) {
   _pico_free( p->data );
  }
  _pico_free( p );
 }
}
