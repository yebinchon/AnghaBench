
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vmap; int polygon; int point; struct TYPE_4__* name; } ;
typedef TYPE_1__ lwLayer ;
typedef int ListFreeFunc ;


 int _pico_free (TYPE_1__*) ;
 int lwFreePoints (int *) ;
 int lwFreePolygons (int *) ;
 scalar_t__ lwFreeVMap ;
 int lwListFree (int ,int ) ;

void lwFreeLayer( lwLayer *layer ){
 if ( layer ) {
  if ( layer->name ) {
   _pico_free( layer->name );
  }
  lwFreePoints( &layer->point );
  lwFreePolygons( &layer->polygon );
  lwListFree( layer->vmap, (ListFreeFunc) lwFreeVMap );
  _pico_free( layer );
 }
}
