
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int width; int height; int ** points; } ;
typedef TYPE_1__ cGrid_t ;


 scalar_t__ CM_NeedsSubdivision (int ,int ,int ) ;
 int CM_Subdivide (int ,int ,int ,int ,int ,int ) ;
 int VectorCopy (int ,int ) ;

__attribute__((used)) static void CM_SubdivideGridColumns( cGrid_t *grid ) {
 int i, j, k;

 for ( i = 0 ; i < grid->width - 2 ; ) {







  for ( j = 0 ; j < grid->height ; j++ ) {
   if ( CM_NeedsSubdivision( grid->points[i][j], grid->points[i+1][j], grid->points[i+2][j] ) ) {
    break;
   }
  }
  if ( j == grid->height ) {


   for ( j = 0 ; j < grid->height ; j++ ) {

    for ( k = i + 2 ; k < grid->width ; k++ ) {
     VectorCopy( grid->points[k][j], grid->points[k-1][j] );
    }
   }

   grid->width--;


   i++;
   continue;
  }




  for ( j = 0 ; j < grid->height ; j++ ) {
   vec3_t prev, mid, next;


   VectorCopy( grid->points[i][j], prev );
   VectorCopy( grid->points[i+1][j], mid );
   VectorCopy( grid->points[i+2][j], next );




   for ( k = grid->width - 1 ; k > i + 1 ; k-- ) {
    VectorCopy( grid->points[k][j], grid->points[k+2][j] );
   }


   CM_Subdivide( prev, mid, next, grid->points[i+1][j], grid->points[i+2][j], grid->points[i+3][j] );
  }

  grid->width += 2;



 }
}
