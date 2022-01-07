
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; float*** points; int width; int wrapWidth; } ;
typedef TYPE_1__ cGrid_t ;


 float WRAP_POINT_EPSILON ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static void CM_SetGridWrapWidth( cGrid_t *grid ) {
 int i, j;
 float d;

 for ( i = 0 ; i < grid->height ; i++ ) {
  for ( j = 0 ; j < 3 ; j++ ) {
   d = grid->points[0][i][j] - grid->points[grid->width-1][i][j];
   if ( d < -WRAP_POINT_EPSILON || d > WRAP_POINT_EPSILON ) {
    break;
   }
  }
  if ( j != 3 ) {
   break;
  }
 }
 if ( i == grid->height ) {
  grid->wrapWidth = qtrue;
 } else {
  grid->wrapWidth = qfalse;
 }
}
