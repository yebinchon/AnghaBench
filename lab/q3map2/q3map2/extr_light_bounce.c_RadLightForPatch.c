
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_21__ {int patchIterations; } ;
typedef TYPE_1__ surfaceInfo_t ;
typedef int shaderInfo_t ;
typedef int rawLightmap_t ;
struct TYPE_22__ {int numVerts; TYPE_4__* verts; } ;
typedef TYPE_2__ radWinding_t ;
typedef scalar_t__ qboolean ;
struct TYPE_23__ {int width; int height; TYPE_4__* verts; } ;
typedef TYPE_3__ mesh_t ;
typedef int clipWork_t ;
struct TYPE_24__ {int** color; int xyz; } ;
typedef TYPE_4__ bspDrawVert_t ;
struct TYPE_25__ {int numVerts; size_t firstVert; int patchWidth; int patchHeight; } ;
typedef TYPE_5__ bspDrawSurface_t ;


 float DotProduct (int ,float*) ;
 int FreeMesh (TYPE_3__*) ;
 int MAX_LIGHTMAPS ;
 scalar_t__ PLANAR_EPSILON ;
 scalar_t__ PlaneFromPoints (float*,int ,int ,int ) ;
 int PutMeshOnCurve (TYPE_3__) ;
 float* RAD_VERTEX_LUXEL (int,size_t) ;
 int RadSubdivideDiffuseLight (int,TYPE_5__*,int *,int *,float,float,int ,TYPE_2__*,int *) ;
 TYPE_3__* RemoveLinearMeshColumnsRows (TYPE_3__*) ;
 TYPE_3__* SubdivideMesh2 (TYPE_3__,int ) ;
 int VectorCopy (float*,size_t*) ;
 TYPE_5__* bspDrawSurfaces ;
 scalar_t__ fabs (float) ;
 int free (TYPE_4__*) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 scalar_t__ qfalse ;
 int qtrue ;
 TYPE_4__* safe_malloc (int) ;
 TYPE_1__* surfaceInfos ;
 TYPE_4__* yDrawVerts ;

void RadLightForPatch( int num, int lightmapNum, rawLightmap_t *lm, shaderInfo_t *si, float scale, float subdivide, clipWork_t *cw ){
 int i, x, y, v, t, pw[ 5 ], r;
 bspDrawSurface_t *ds;
 surfaceInfo_t *info;
 bspDrawVert_t *bogus;
 bspDrawVert_t *dv[ 4 ];
 mesh_t src, *subdivided, *mesh;
 float *radVertexLuxel;
 float dist;
 vec4_t plane;
 qboolean planar;
 radWinding_t rw;



 ds = &bspDrawSurfaces[ num ];
 info = &surfaceInfos[ num ];


 bogus = safe_malloc( ds->numVerts * sizeof( bspDrawVert_t ) );
 memcpy( bogus, &yDrawVerts[ ds->firstVert ], ds->numVerts * sizeof( bspDrawVert_t ) );
 for ( i = 0; i < ds->numVerts; i++ )
  bogus[ i ].color[ 0 ][ 0 ] = i;



 src.width = ds->patchWidth;
 src.height = ds->patchHeight;
 src.verts = bogus;

 subdivided = SubdivideMesh2( src, info->patchIterations );
 PutMeshOnCurve( *subdivided );

 mesh = RemoveLinearMeshColumnsRows( subdivided );
 FreeMesh( subdivided );
 free( bogus );




 for ( i = 0; i < ( mesh->width * mesh->height ); i++ )
 {
  dv[ 0 ] = &mesh->verts[ i ];
  if ( dv[ 0 ]->color[ 0 ][ 0 ] >= ds->numVerts ) {
   dv[ 0 ]->color[ 0 ][ 0 ] = ds->numVerts - 1;
  }
 }


 for ( y = 0; y < ( mesh->height - 1 ); y++ )
 {
  for ( x = 0; x < ( mesh->width - 1 ); x++ )
  {

   pw[ 0 ] = x + ( y * mesh->width );
   pw[ 1 ] = x + ( ( y + 1 ) * mesh->width );
   pw[ 2 ] = x + 1 + ( ( y + 1 ) * mesh->width );
   pw[ 3 ] = x + 1 + ( y * mesh->width );
   pw[ 4 ] = x + ( y * mesh->width );


   r = ( x + y ) & 1;


   dv[ 0 ] = &mesh->verts[ pw[ r + 0 ] ];
   dv[ 1 ] = &mesh->verts[ pw[ r + 1 ] ];
   dv[ 2 ] = &mesh->verts[ pw[ r + 2 ] ];
   dv[ 3 ] = &mesh->verts[ pw[ r + 3 ] ];


   planar = PlaneFromPoints( plane, dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz );
   if ( planar ) {
    dist = DotProduct( dv[ 1 ]->xyz, plane ) - plane[ 3 ];
    if ( fabs( dist ) > PLANAR_EPSILON ) {
     planar = qfalse;
    }
   }


   if ( planar ) {
    rw.numVerts = 4;
    for ( v = 0; v < 4; v++ )
    {

     memcpy( &rw.verts[ v ], dv[ v ], sizeof( bspDrawVert_t ) );


     for ( i = 0; i < MAX_LIGHTMAPS; i++ )
     {
      radVertexLuxel = RAD_VERTEX_LUXEL( i, ds->firstVert + dv[ v ]->color[ 0 ][ 0 ] );
      VectorCopy( radVertexLuxel, rw.verts[ v ].color[ i ] );
      rw.verts[ v ].color[ i ][ 3 ] = dv[ v ]->color[ i ][ 3 ];
     }
    }


    RadSubdivideDiffuseLight( lightmapNum, ds, lm, si, scale, subdivide, qtrue, &rw, cw );
   }


   else
   {
    rw.numVerts = 3;
    for ( t = 0; t < 2; t++ )
    {
     for ( v = 0; v < 3 + t; v++ )
     {

      if ( v == 1 && t == 1 ) {
       v++;
      }


      memcpy( &rw.verts[ v ], dv[ v ], sizeof( bspDrawVert_t ) );


      for ( i = 0; i < MAX_LIGHTMAPS; i++ )
      {
       radVertexLuxel = RAD_VERTEX_LUXEL( i, ds->firstVert + dv[ v ]->color[ 0 ][ 0 ] );
       VectorCopy( radVertexLuxel, rw.verts[ v ].color[ i ] );
       rw.verts[ v ].color[ i ][ 3 ] = dv[ v ]->color[ i ][ 3 ];
      }
     }


     RadSubdivideDiffuseLight( lightmapNum, ds, lm, si, scale, subdivide, qtrue, &rw, cw );
    }
   }
  }
 }


 FreeMesh( mesh );
}
