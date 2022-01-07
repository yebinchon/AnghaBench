
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
typedef int vec3_t ;
struct TYPE_9__ {int numVerts; TYPE_1__* verts; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_7__ {int xyz; } ;


 TYPE_2__* AllocWinding (int) ;
 int MAX_POINTS_ON_WINDING ;
 int VectorCopy (int ,int ) ;
 int qtrue ;
 int xml_Winding (char*,int *,int,int ) ;

winding_t *WindingFromDrawSurf( mapDrawSurface_t *ds ){
 winding_t *w;
 int i;



 if ( ds->numVerts >= MAX_POINTS_ON_WINDING ) {
  int max = ds->numVerts;
  vec3_t p[256];

  if ( max > 256 ) {
   max = 256;
  }

  for ( i = 0 ; i < max ; i++ ) {
   VectorCopy( ds->verts[i].xyz, p[i] );
  }

  xml_Winding( "WindingFromDrawSurf failed: MAX_POINTS_ON_WINDING exceeded", p, max, qtrue );
 }

 w = AllocWinding( ds->numVerts );
 w->numpoints = ds->numVerts;
 for ( i = 0 ; i < ds->numVerts ; i++ ) {
  VectorCopy( ds->verts[i].xyz, w->p[i] );
 }
 return w;
}
