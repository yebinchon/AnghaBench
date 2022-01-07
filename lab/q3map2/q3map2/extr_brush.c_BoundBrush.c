
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
typedef int qboolean ;
struct TYPE_7__ {scalar_t__* mins; scalar_t__* maxs; int numsides; TYPE_1__* sides; } ;
typedef TYPE_3__ brush_t ;
struct TYPE_5__ {TYPE_2__* winding; } ;


 int AddPointToBounds (int ,scalar_t__*,scalar_t__*) ;
 int ClearBounds (scalar_t__*,scalar_t__*) ;
 scalar_t__ MAX_WORLD_COORD ;
 scalar_t__ MIN_WORLD_COORD ;
 int qfalse ;
 int qtrue ;

qboolean BoundBrush( brush_t *brush ){
 int i, j;
 winding_t *w;


 ClearBounds( brush->mins, brush->maxs );
 for ( i = 0; i < brush->numsides; i++ )
 {
  w = brush->sides[ i ].winding;
  if ( w == ((void*)0) ) {
   continue;
  }
  for ( j = 0; j < w->numpoints; j++ )
   AddPointToBounds( w->p[ j ], brush->mins, brush->maxs );
 }

 for ( i = 0; i < 3; i++ )
 {
  if ( brush->mins[ i ] < MIN_WORLD_COORD || brush->maxs[ i ] > MAX_WORLD_COORD || brush->mins[i] >= brush->maxs[ i ] ) {
   return qfalse;
  }
 }

 return qtrue;
}
