
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int mapDrawSurface_t ;
struct TYPE_12__ {float density; int inverseAlpha; float odds; } ;
typedef TYPE_1__ foliage_t ;
struct TYPE_13__ {int normal; int xyz; } ;
typedef TYPE_2__ foliageInstance_t ;
struct TYPE_14__ {float* xyz; float* normal; scalar_t__** color; } ;
typedef TYPE_3__ bspDrawVert_t ;


 int LerpDrawVert (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 size_t MAX_FOLIAGE_INSTANCES ;
 int PlaneFromPoints (float*,float*,float*,float*) ;
 float Random () ;
 int VectorAdd (int ,float*,int ) ;
 int VectorClear (int ) ;
 int VectorCopy (TYPE_3__**,TYPE_3__**) ;
 float VectorNormalize (int ,int ) ;
 int VectorScale (int ,float,int ) ;
 TYPE_2__* foliageInstances ;
 size_t numFoliageInstances ;

__attribute__((used)) static void SubdivideFoliageTriangle_r( mapDrawSurface_t *ds, foliage_t *foliage, bspDrawVert_t **tri ){
 bspDrawVert_t mid, *tri2[ 3 ];
 int max;



 if ( numFoliageInstances >= MAX_FOLIAGE_INSTANCES ) {
  return;
 }


 {
  vec4_t plane;



  if ( !PlaneFromPoints( plane, tri[ 0 ]->xyz, tri[ 1 ]->xyz, tri[ 2 ]->xyz ) ) {
   return;
  }


  if ( plane[ 2 ] < 0.5f ) {
   return;
  }
 }


 {
  int i;
  float *a, *b, dx, dy, dz, dist, maxDist;
  foliageInstance_t *fi;



  fi = &foliageInstances[ numFoliageInstances ];


  max = -1;
  maxDist = 0.0f;
  VectorClear( fi->xyz );
  VectorClear( fi->normal );
  for ( i = 0; i < 3; i++ )
  {

   a = tri[ i ]->xyz;
   b = tri[ ( i + 1 ) % 3 ]->xyz;


   dx = a[ 0 ] - b[ 0 ];
   dy = a[ 1 ] - b[ 1 ];
   dz = a[ 2 ] - b[ 2 ];
   dist = ( dx * dx ) + ( dy * dy ) + ( dz * dz );


   if ( dist > maxDist ) {
    maxDist = dist;
    max = i;
   }


   VectorAdd( fi->xyz, tri[ i ]->xyz, fi->xyz );
   VectorAdd( fi->normal, tri[ i ]->normal, fi->normal );
  }


  if ( maxDist <= ( foliage->density * foliage->density ) ) {
   float alpha, odds, r;



   if ( foliage->inverseAlpha == 2 ) {
    alpha = 1.0f;
   }
   else
   {
    alpha = ( (float) tri[ 0 ]->color[ 0 ][ 3 ] + (float) tri[ 1 ]->color[ 0 ][ 3 ] + (float) tri[ 2 ]->color[ 0 ][ 3 ] ) / 765.0f;
    if ( foliage->inverseAlpha == 1 ) {
     alpha = 1.0f - alpha;
    }
    if ( alpha < 0.75f ) {
     return;
    }
   }


   odds = foliage->odds * alpha;
   r = Random();
   if ( r > odds ) {
    return;
   }


   VectorScale( fi->xyz, 0.33333333f, fi->xyz );
   if ( VectorNormalize( fi->normal, fi->normal ) == 0.0f ) {
    return;
   }


   numFoliageInstances++;
   return;
  }
 }


 LerpDrawVert( tri[ max ], tri[ ( max + 1 ) % 3 ], &mid );


 VectorCopy( tri, tri2 );
 tri2[ max ] = &mid;
 SubdivideFoliageTriangle_r( ds, foliage, tri2 );


 VectorCopy( tri, tri2 );
 tri2[ ( max + 1 ) % 3 ] = &mid;
 SubdivideFoliageTriangle_r( ds, foliage, tri2 );
}
