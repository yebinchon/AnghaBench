
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cfilter; int key; struct TYPE_6__* name; } ;
typedef TYPE_1__ lwEnvelope ;
typedef int (* ListFreeFunc ) (TYPE_1__*) ;


 int _pico_free (TYPE_1__*) ;
 scalar_t__ lwFreePlugin ;
 int lwListFree (int ,int (*) (TYPE_1__*)) ;

void lwFreeEnvelope( lwEnvelope *env ){
 if ( env ) {
  if ( env->name ) {
   _pico_free( env->name );
  }
  lwListFree( env->key, _pico_free );
  lwListFree( env->cfilter, (ListFreeFunc) lwFreePlugin );
  _pico_free( env );
 }
}
