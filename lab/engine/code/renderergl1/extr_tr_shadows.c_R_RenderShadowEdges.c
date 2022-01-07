
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t facing; int i2; } ;
struct TYPE_3__ {int numIndexes; int* indexes; int numVertexes; int * xyz; } ;


 int GL_TRIANGLE_STRIP ;
 TYPE_2__** edgeDefs ;
 int * facing ;
 int* numEdgeDefs ;
 int qglBegin (int ) ;
 int qglEnd () ;
 int qglVertex3fv (int ) ;
 int * shadowXyz ;
 TYPE_1__ tess ;

void R_RenderShadowEdges( void ) {
 int i;
 int c, c2;
 int j, k;
 int i2;
 int c_edges, c_rejected;
 int hit[2];





 c_edges = 0;
 c_rejected = 0;

 for ( i = 0 ; i < tess.numVertexes ; i++ ) {
  c = numEdgeDefs[ i ];
  for ( j = 0 ; j < c ; j++ ) {
   if ( !edgeDefs[ i ][ j ].facing ) {
    continue;
   }

   hit[0] = 0;
   hit[1] = 0;

   i2 = edgeDefs[ i ][ j ].i2;
   c2 = numEdgeDefs[ i2 ];
   for ( k = 0 ; k < c2 ; k++ ) {
    if ( edgeDefs[ i2 ][ k ].i2 == i ) {
     hit[ edgeDefs[ i2 ][ k ].facing ]++;
    }
   }



   if ( hit[ 1 ] == 0 ) {
    qglBegin( GL_TRIANGLE_STRIP );
    qglVertex3fv( tess.xyz[ i ] );
    qglVertex3fv( shadowXyz[ i ] );
    qglVertex3fv( tess.xyz[ i2 ] );
    qglVertex3fv( shadowXyz[ i2 ] );
    qglEnd();
    c_edges++;
   } else {
    c_rejected++;
   }
  }
 }

}
