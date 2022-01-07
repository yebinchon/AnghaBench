
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int numpoints; float** p; } ;
typedef TYPE_1__ winding_t ;
typedef float* vec4_t ;
struct TYPE_16__ {int numVerts; TYPE_4__* verts; int lightmapScale; int fogNum; int shaderInfo; int recvShadows; int castShadows; int entityNum; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_17__ {float** planes; int numPlanes; float** texMat; int si; } ;
typedef TYPE_3__ decalProjector_t ;
struct TYPE_18__ {float* xyz; float* st; int** color; int normal; } ;
typedef TYPE_4__ bspDrawVert_t ;


 TYPE_2__* AllocDrawSurface (int ) ;
 int ClipWindingEpsilon (TYPE_1__*,float*,float,float,TYPE_1__**,TYPE_1__**) ;
 float DotProduct (float*,float*) ;
 int FreeWinding (TYPE_1__*) ;
 int MAX_LIGHTMAPS ;
 int PlaneFromPoints (float*,float*,float*,float*) ;
 int SURFACE_DECAL ;
 int VectorAdd (float*,int ,float*) ;
 int VectorCopy (float*,int ) ;
 int VectorSubtract (float*,int ,float*) ;
 int entityOrigin ;
 int memset (TYPE_4__*,int ,int) ;
 int numDecalSurfaces ;
 TYPE_4__* safe_malloc (int) ;

__attribute__((used)) static void ProjectDecalOntoWinding( decalProjector_t *dp, mapDrawSurface_t *ds, winding_t *w ){
 int i, j;
 float d, d2, alpha;
 winding_t *front, *back;
 mapDrawSurface_t *ds2;
 bspDrawVert_t *dv;
 vec4_t plane;



 if ( w->numpoints < 3 ) {
  FreeWinding( w );
  return;
 }


 for ( i = 0; i < w->numpoints; i++ )
  VectorAdd( w->p[ i ], entityOrigin, w->p[ i ] );


 if ( !PlaneFromPoints( plane, w->p[ 0 ], w->p[ 1 ], w->p[ 2 ] ) ) {
  FreeWinding( w );
  return;
 }


 d = DotProduct( dp->planes[ 0 ], plane );
 if ( d < -0.0001f ) {
  FreeWinding( w );
  return;
 }


 for ( i = 0; i < dp->numPlanes; i++ )
 {

  ClipWindingEpsilon( w, dp->planes[ i ], dp->planes[ i ][ 3 ], 0.0625f, &front, &back );
  FreeWinding( w );


  if ( front != ((void*)0) ) {
   FreeWinding( front );
  }


  if ( back == ((void*)0) ) {
   return;
  }


  w = back;
 }


 if ( w == ((void*)0) || w->numpoints < 3 ) {
  return;
 }


 numDecalSurfaces++;


 ds2 = AllocDrawSurface( SURFACE_DECAL );


 ds2->entityNum = ds->entityNum;
 ds2->castShadows = ds->castShadows;
 ds2->recvShadows = ds->recvShadows;
 ds2->shaderInfo = dp->si;
 ds2->fogNum = ds->fogNum;
 ds2->lightmapScale = ds->lightmapScale;
 ds2->numVerts = w->numpoints;
 ds2->verts = safe_malloc( ds2->numVerts * sizeof( *ds2->verts ) );
 memset( ds2->verts, 0, ds2->numVerts * sizeof( *ds2->verts ) );


 for ( i = 0; i < ds2->numVerts; i++ )
 {

  dv = &ds2->verts[ i ];


  d = DotProduct( w->p[ i ], dp->planes[ 0 ] ) - dp->planes[ 0 ][ 3 ];
  d2 = DotProduct( w->p[ i ], dp->planes[ 1 ] ) - dp->planes[ 1 ][ 3 ];
  alpha = 255.0f * d2 / ( d + d2 );
  if ( alpha > 255 ) {
   alpha = 255;
  }
  else if ( alpha < 0 ) {
   alpha = 0;
  }


  VectorSubtract( w->p[ i ], entityOrigin, dv->xyz );
  VectorCopy( plane, dv->normal );
  dv->st[ 0 ] = DotProduct( dv->xyz, dp->texMat[ 0 ] ) + dp->texMat[ 0 ][ 3 ];
  dv->st[ 1 ] = DotProduct( dv->xyz, dp->texMat[ 1 ] ) + dp->texMat[ 1 ][ 3 ];


  for ( j = 0; j < MAX_LIGHTMAPS; j++ )
  {
   dv->color[ j ][ 0 ] = 255;
   dv->color[ j ][ 1 ] = 255;
   dv->color[ j ][ 2 ] = 255;
   dv->color[ j ][ 3 ] = alpha;
  }
 }
}
