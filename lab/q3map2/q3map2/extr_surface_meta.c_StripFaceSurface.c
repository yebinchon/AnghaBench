
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
struct TYPE_8__ {int numVerts; scalar_t__ type; int numIndexes; int indexes; TYPE_4__* verts; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_9__ {scalar_t__* xyz; } ;
struct TYPE_7__ {scalar_t__ autosprite; } ;


 int ClassifySurfaces (int,TYPE_2__*) ;
 int Error (char*,int,int,int) ;
 int FanFaceSurface (TYPE_2__*) ;
 scalar_t__ IsTriangleDegenerate (TYPE_4__*,int,int,int) ;
 int MAX_INDEXES ;
 scalar_t__ SURFACE_DECAL ;
 scalar_t__ SURFACE_FACE ;
 int VectorSet (int*,int ,int,int) ;
 int memcpy (int ,int*,int) ;
 int numStripSurfaces ;
 scalar_t__ qfalse ;
 int safe_malloc (int) ;

void StripFaceSurface( mapDrawSurface_t *ds ){
 int i, r, least, rotate, numIndexes, ni, a, b, c, indexes[ MAX_INDEXES ];
 vec_t *v1, *v2;



 if ( !ds->numVerts || ( ds->type != SURFACE_FACE && ds->type != SURFACE_DECAL ) ) {
  return;
 }


 if ( ds->numVerts == 3 ) {
  numIndexes = 3;
  VectorSet( indexes, 0, 1, 2 );
 }
 else
 {

  least = 0;
  if ( ds->shaderInfo != ((void*)0) && ds->shaderInfo->autosprite == qfalse ) {
   for ( i = 0; i < ds->numVerts; i++ )
   {

    v1 = ds->verts[ i ].xyz;
    v2 = ds->verts[ least ].xyz;


    if ( v1[ 0 ] < v2[ 0 ] ||
      ( v1[ 0 ] == v2[ 0 ] && v1[ 1 ] < v2[ 1 ] ) ||
      ( v1[ 0 ] == v2[ 0 ] && v1[ 1 ] == v2[ 1 ] && v1[ 2 ] < v2[ 2 ] ) ) {
     least = i;
    }
   }
  }


  numIndexes = ( ds->numVerts - 2 ) * 3;
  if ( numIndexes > MAX_INDEXES ) {
   Error( "MAX_INDEXES exceeded for surface (%d > %d) (%d verts)", numIndexes, MAX_INDEXES, ds->numVerts );
  }


  for ( r = 0; r < ds->numVerts; r++ )
  {

   rotate = ( r + least ) % ds->numVerts;


   for ( ni = 0, i = 0; i < ds->numVerts - 2 - i; i++ )
   {

    a = ( ds->numVerts - 1 - i + rotate ) % ds->numVerts;
    b = ( i + rotate ) % ds->numVerts;
    c = ( ds->numVerts - 2 - i + rotate ) % ds->numVerts;


    if ( ds->numVerts > 4 && IsTriangleDegenerate( ds->verts, a, b, c ) ) {
     break;
    }
    indexes[ ni++ ] = a;
    indexes[ ni++ ] = b;
    indexes[ ni++ ] = c;


    if ( i + 1 != ds->numVerts - 1 - i ) {

     a = ( ds->numVerts - 2 - i + rotate ) % ds->numVerts;
     b = ( i + rotate ) % ds->numVerts;
     c = ( i + 1 + rotate ) % ds->numVerts;


     if ( ds->numVerts > 4 && IsTriangleDegenerate( ds->verts, a, b, c ) ) {
      break;
     }
     indexes[ ni++ ] = a;
     indexes[ ni++ ] = b;
     indexes[ ni++ ] = c;
    }
   }


   if ( ni == numIndexes ) {
    break;
   }
  }


  if ( ni < numIndexes ) {
   FanFaceSurface( ds );
   return;
  }
 }


 ds->numIndexes = numIndexes;
 ds->indexes = safe_malloc( ds->numIndexes * sizeof( int ) );
 memcpy( ds->indexes, indexes, ds->numIndexes * sizeof( int ) );


 numStripSurfaces++;


 ClassifySurfaces( 1, ds );
}
