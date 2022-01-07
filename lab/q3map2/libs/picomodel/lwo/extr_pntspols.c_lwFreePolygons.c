
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; TYPE_4__* pol; } ;
typedef TYPE_1__ lwPolygonList ;
struct TYPE_6__ {int nverts; struct TYPE_6__* v; struct TYPE_6__* vm; } ;


 int _pico_free (TYPE_4__*) ;
 int memset (TYPE_1__*,int ,int) ;

void lwFreePolygons( lwPolygonList *plist ){
 int i, j;

 if ( plist ) {
  if ( plist->pol ) {
   for ( i = 0; i < plist->count; i++ ) {
    if ( plist->pol[ i ].v ) {
     for ( j = 0; j < plist->pol[ i ].nverts; j++ )
      if ( plist->pol[ i ].v[ j ].vm ) {
       _pico_free( plist->pol[ i ].v[ j ].vm );
      }
    }
   }
   if ( plist->pol[ 0 ].v ) {
    _pico_free( plist->pol[ 0 ].v );
   }
   _pico_free( plist->pol );
  }
  memset( plist, 0, sizeof( lwPolygonList ) );
 }
}
