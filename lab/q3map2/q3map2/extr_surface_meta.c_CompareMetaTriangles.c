
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_5__ {scalar_t__ fogNum; scalar_t__ planeNum; scalar_t__* plane; int* indexes; TYPE_1__* si; } ;
typedef TYPE_2__ metaTriangle_t ;
struct TYPE_6__ {scalar_t__* xyz; } ;
struct TYPE_4__ {scalar_t__ nonplanar; } ;


 int VectorSet (scalar_t__*,int,int,int) ;
 TYPE_3__* metaVerts ;
 float npDegrees ;
 scalar_t__ qfalse ;

__attribute__((used)) static int CompareMetaTriangles( const void *a, const void *b ){
 int i, j, av, bv;
 vec3_t aMins, bMins;



 if ( ( (metaTriangle_t*) a )->si < ( (metaTriangle_t*) b )->si ) {
  return 1;
 }
 else if ( ( (metaTriangle_t*) a )->si > ( (metaTriangle_t*) b )->si ) {
  return -1;
 }


 else if ( ( (metaTriangle_t*) a )->fogNum < ( (metaTriangle_t*) b )->fogNum ) {
  return 1;
 }
 else if ( ( (metaTriangle_t*) a )->fogNum > ( (metaTriangle_t*) b )->fogNum ) {
  return -1;
 }
 VectorSet( aMins, 999999, 999999, 999999 );
 VectorSet( bMins, 999999, 999999, 999999 );
 for ( i = 0; i < 3; i++ )
 {
  av = ( (metaTriangle_t*) a )->indexes[ i ];
  bv = ( (metaTriangle_t*) b )->indexes[ i ];
  for ( j = 0; j < 3; j++ )
  {
   if ( metaVerts[ av ].xyz[ j ] < aMins[ j ] ) {
    aMins[ j ] = metaVerts[ av ].xyz[ j ];
   }
   if ( metaVerts[ bv ].xyz[ j ] < bMins[ j ] ) {
    bMins[ j ] = metaVerts[ bv ].xyz[ j ];
   }
  }
 }


 for ( i = 0; i < 3; i++ )
 {
  if ( aMins[ i ] < bMins[ i ] ) {
   return 1;
  }
  else if ( aMins[ i ] > bMins[ i ] ) {
   return -1;
  }
 }


 return 0;
}
