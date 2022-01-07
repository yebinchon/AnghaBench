
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_10__ {int numVerts; int* xyz; int** color; int* normal; int* st; int** lightmap; struct TYPE_10__* verts; } ;
typedef TYPE_1__ radWinding_t ;
typedef TYPE_1__ radVert_t ;
struct TYPE_11__ {int* dists; int* sides; } ;
typedef TYPE_3__ clipWork_t ;


 int DotProduct (int*,int ) ;
 int Error (char*) ;
 int MAX_LIGHTMAPS ;
 int MAX_POINTS_ON_WINDING ;
 int SIDE_BACK ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 int VectorNormalize (int*,int*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void RadClipWindingEpsilon( radWinding_t *in, vec3_t normal, vec_t dist,
           vec_t epsilon, radWinding_t *front, radWinding_t *back, clipWork_t *cw ){
 vec_t *dists;
 int *sides;
 int counts[ 3 ];
 vec_t dot;
 int i, j, k;
 radVert_t *v1, *v2, mid;
 int maxPoints;



 dists = cw->dists;
 sides = cw->sides;


 counts[ 0 ] = counts[ 1 ] = counts[ 2 ] = 0;


 for ( i = 0; i < in->numVerts; i++ )
 {
  dot = DotProduct( in->verts[ i ].xyz, normal );
  dot -= dist;
  dists[ i ] = dot;
  if ( dot > epsilon ) {
   sides[ i ] = SIDE_FRONT;
  }
  else if ( dot < -epsilon ) {
   sides[ i ] = SIDE_BACK;
  }
  else{
   sides[ i ] = SIDE_ON;
  }
  counts[ sides[ i ] ]++;
 }
 sides[ i ] = sides[ 0 ];
 dists[ i ] = dists[ 0 ];


 front->numVerts = back->numVerts = 0;


 if ( counts[ 0 ] == 0 ) {
  memcpy( back, in, sizeof( radWinding_t ) );
  return;
 }
 if ( counts[ 1 ] == 0 ) {
  memcpy( front, in, sizeof( radWinding_t ) );
  return;
 }


 maxPoints = in->numVerts + 4;


 for ( i = 0; i < in->numVerts; i++ )
 {

  v1 = &in->verts[ i ];

  if ( sides[ i ] == SIDE_ON ) {
   memcpy( &front->verts[ front->numVerts++ ], v1, sizeof( radVert_t ) );
   memcpy( &back->verts[ back->numVerts++ ], v1, sizeof( radVert_t ) );
   continue;
  }

  if ( sides[ i ] == SIDE_FRONT ) {
   memcpy( &front->verts[ front->numVerts++ ], v1, sizeof( radVert_t ) );
  }

  if ( sides[ i ] == SIDE_BACK ) {
   memcpy( &back->verts[ back->numVerts++ ], v1, sizeof( radVert_t ) );
  }

  if ( sides[ i + 1 ] == SIDE_ON || sides[ i + 1 ] == sides[ i ] ) {
   continue;
  }


  v2 = &in->verts[ ( i + 1 ) % in->numVerts ];

  dot = dists[ i ] / ( dists[ i ] - dists[ i + 1 ] );


  for ( j = 0; j < 4; j++ )
  {

   if ( j < 4 ) {
    for ( k = 0; k < MAX_LIGHTMAPS; k++ )
     mid.color[ k ][ j ] = v1->color[ k ][ j ] + dot * ( v2->color[ k ][ j ] - v1->color[ k ][ j ] );
   }


   if ( j < 3 ) {
    mid.xyz[ j ] = v1->xyz[ j ] + dot * ( v2->xyz[ j ] - v1->xyz[ j ] );
    mid.normal[ j ] = v1->normal[ j ] + dot * ( v2->normal[ j ] - v1->normal[ j ] );
   }


   if ( j < 2 ) {
    mid.st[ j ] = v1->st[ j ] + dot * ( v2->st[ j ] - v1->st[ j ] );
    for ( k = 0; k < MAX_LIGHTMAPS; k++ )
     mid.lightmap[ k ][ j ] = v1->lightmap[ k ][ j ] + dot * ( v2->lightmap[ k ][ j ] - v1->lightmap[ k ][ j ] );
   }
  }


  VectorNormalize( mid.normal, mid.normal );


  memcpy( &front->verts[ front->numVerts++ ], &mid, sizeof( radVert_t ) );
  memcpy( &back->verts[ back->numVerts++ ], &mid, sizeof( radVert_t ) );
 }


 if ( front->numVerts > maxPoints ) {
  Error( "RadClipWindingEpsilon: points exceeded estimate" );
 }
 if ( front->numVerts > MAX_POINTS_ON_WINDING ) {
  Error( "RadClipWindingEpsilon: MAX_POINTS_ON_WINDING" );
 }
}
