
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; TYPE_4__* pt; } ;
typedef TYPE_1__ lwPointList ;
struct TYPE_6__ {struct TYPE_6__* vm; struct TYPE_6__* pol; } ;


 int _pico_free (TYPE_4__*) ;
 int memset (TYPE_1__*,int ,int) ;

void lwFreePoints( lwPointList *point ){
 int i;

 if ( point ) {
  if ( point->pt ) {
   for ( i = 0; i < point->count; i++ ) {
    if ( point->pt[ i ].pol ) {
     _pico_free( point->pt[ i ].pol );
    }
    if ( point->pt[ i ].vm ) {
     _pico_free( point->pt[ i ].vm );
    }
   }
   _pico_free( point->pt );
  }
  memset( point, 0, sizeof( lwPointList ) );
 }
}
