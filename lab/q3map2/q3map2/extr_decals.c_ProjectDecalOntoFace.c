
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int winding_t ;
typedef scalar_t__* vec4_t ;
struct TYPE_11__ {size_t planeNum; scalar_t__ planar; TYPE_1__* sideRef; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_12__ {scalar_t__** planes; } ;
typedef TYPE_3__ decalProjector_t ;
struct TYPE_13__ {scalar_t__ dist; int normal; } ;
struct TYPE_10__ {int * side; } ;


 float DotProduct (scalar_t__*,scalar_t__*) ;
 int ProjectDecalOntoWinding (TYPE_3__*,TYPE_2__*,int *) ;
 int VectorCopy (int ,scalar_t__*) ;
 int * WindingFromDrawSurf (TYPE_2__*) ;
 scalar_t__* entityOrigin ;
 TYPE_4__* mapplanes ;

__attribute__((used)) static void ProjectDecalOntoFace( decalProjector_t *dp, mapDrawSurface_t *ds ){
 vec4_t plane;
 float d;
 winding_t *w;



 if ( ds->sideRef == ((void*)0) || ds->sideRef->side == ((void*)0) ) {
  return;
 }


 if ( ds->planar ) {
  VectorCopy( mapplanes[ ds->planeNum ].normal, plane );
  plane[ 3 ] = mapplanes[ ds->planeNum ].dist + DotProduct( plane, entityOrigin );
  d = DotProduct( dp->planes[ 0 ], plane );
  if ( d < -0.0001f ) {
   return;
  }
 }


 w = WindingFromDrawSurf( ds );
 ProjectDecalOntoWinding( dp, ds, w );
}
