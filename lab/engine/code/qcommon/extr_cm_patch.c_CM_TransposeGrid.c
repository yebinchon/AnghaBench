
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_3__ {int width; int height; int wrapHeight; int wrapWidth; int ** points; } ;
typedef TYPE_1__ cGrid_t ;


 int VectorCopy (int ,int ) ;

__attribute__((used)) static void CM_TransposeGrid( cGrid_t *grid ) {
 int i, j, l;
 vec3_t temp;
 qboolean tempWrap;

 if ( grid->width > grid->height ) {
  for ( i = 0 ; i < grid->height ; i++ ) {
   for ( j = i + 1 ; j < grid->width ; j++ ) {
    if ( j < grid->height ) {

     VectorCopy( grid->points[i][j], temp );
     VectorCopy( grid->points[j][i], grid->points[i][j] );
     VectorCopy( temp, grid->points[j][i] );
    } else {

     VectorCopy( grid->points[j][i], grid->points[i][j] );
    }
   }
  }
 } else {
  for ( i = 0 ; i < grid->width ; i++ ) {
   for ( j = i + 1 ; j < grid->height ; j++ ) {
    if ( j < grid->width ) {

     VectorCopy( grid->points[j][i], temp );
     VectorCopy( grid->points[i][j], grid->points[j][i] );
     VectorCopy( temp, grid->points[i][j] );
    } else {

     VectorCopy( grid->points[i][j], grid->points[j][i] );
    }
   }
  }
 }

 l = grid->width;
 grid->width = grid->height;
 grid->height = l;

 tempWrap = grid->wrapWidth;
 grid->wrapWidth = grid->wrapHeight;
 grid->wrapHeight = tempWrap;
}
