
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int taglist; int surf; int clip; int env; int layer; } ;
typedef TYPE_1__ lwObject ;
typedef int ListFreeFunc ;


 int _pico_free (TYPE_1__*) ;
 scalar_t__ lwFreeClip ;
 scalar_t__ lwFreeEnvelope ;
 scalar_t__ lwFreeLayer ;
 scalar_t__ lwFreeSurface ;
 int lwFreeTags (int *) ;
 int lwListFree (int ,int ) ;

void lwFreeObject( lwObject *object ){
 if ( object ) {
  lwListFree( object->layer, (ListFreeFunc) lwFreeLayer );
  lwListFree( object->env, (ListFreeFunc) lwFreeEnvelope );
  lwListFree( object->clip, (ListFreeFunc) lwFreeClip );
  lwListFree( object->surf, (ListFreeFunc) lwFreeSurface );
  lwFreeTags( &object->taglist );
  _pico_free( object );
 }
}
