
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numIndexes; int* indexes; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_4__ {scalar_t__ autosprite; } ;


 int VERTEX_CACHE_SIZE ;
 int free (int*) ;
 int memcpy (int*,int*,int) ;
 int* safe_malloc (int) ;

__attribute__((used)) static void OptimizeTriangleSurface( mapDrawSurface_t *ds ){
 int i, j, k, temp, first, best, bestScore, score;
 int vertexCache[ VERTEX_CACHE_SIZE + 1 ];
 int *indexes;



 if ( ds->numIndexes <= VERTEX_CACHE_SIZE ||
   ds->shaderInfo->autosprite ) {
  return;
 }


 indexes = safe_malloc( ds->numIndexes * sizeof( *indexes ) );
 memcpy( indexes, ds->indexes, ds->numIndexes * sizeof( *indexes ) );


 for ( i = 0; i <= VERTEX_CACHE_SIZE && i < ds->numIndexes; i++ )
  vertexCache[ i ] = indexes[ i ];


 for ( i = 0; i < ds->numIndexes; i += 3 )
 {

  first = -1;
  best = -1;
  bestScore = -1;
  for ( j = 0; j < ds->numIndexes; j += 3 )
  {

   if ( indexes[ j ] != -1 ) {

    if ( first < 0 ) {
     first = j;
    }


    score = 0;
    for ( k = 0; k < VERTEX_CACHE_SIZE; k++ )
    {
     if ( indexes[ j ] == vertexCache[ k ] || indexes[ j + 1 ] == vertexCache[ k ] || indexes[ j + 2 ] == vertexCache[ k ] ) {
      score++;
     }
    }


    if ( score > bestScore ) {
     bestScore = score;
     best = j;
    }


    if ( score == 3 ) {
     break;
    }
   }
  }


  if ( best < 0 ) {
   best = first;
  }


  if ( best >= 0 ) {

   for ( j = 0; j < 3; j++ )
   {
    for ( k = 0; k < VERTEX_CACHE_SIZE; k++ )
    {
     if ( indexes[ best + j ] == vertexCache[ k ] ) {
      break;
     }
    }

    if ( k >= VERTEX_CACHE_SIZE ) {

     for ( k = VERTEX_CACHE_SIZE; k > 0; k-- )
      vertexCache[ k ] = vertexCache[ k - 1 ];


     vertexCache[ 0 ] = indexes[ best + j ];
    }
   }


   ds->indexes[ i ] = indexes[ best ];
   ds->indexes[ i + 1 ] = indexes[ best + 1 ];
   ds->indexes[ i + 2 ] = indexes[ best + 2 ];


   indexes[ best ] = -1;
   indexes[ best + 1 ] = -1;
   indexes[ best + 2 ] = -1;


   while ( ds->indexes[ i ] > ds->indexes[ i + 1 ] || ds->indexes[ i ] > ds->indexes[ i + 2 ] )
   {
    temp = ds->indexes[ i ];
    ds->indexes[ i ] = ds->indexes[ i + 1 ];
    ds->indexes[ i + 1 ] = ds->indexes[ i + 2 ];
    ds->indexes[ i + 2 ] = temp;
   }
  }
 }


 free( indexes );
}
