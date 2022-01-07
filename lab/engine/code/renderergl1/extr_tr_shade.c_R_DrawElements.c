
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int glIndex_t ;
struct TYPE_2__ {int integer; } ;


 int GL_INDEX_TYPE ;
 int GL_TRIANGLES ;
 int R_ArrayElementDiscrete ;
 int R_DrawStripElements (int,int const*,int ) ;
 int qglArrayElement ;
 int qglDrawElements (int ,int,int ,int const*) ;
 scalar_t__ qglLockArraysEXT ;
 TYPE_1__* r_primitives ;

void R_DrawElements( int numIndexes, const glIndex_t *indexes ) {
 int primitives;

 primitives = r_primitives->integer;


 if ( primitives == 0 ) {
  if ( qglLockArraysEXT ) {
   primitives = 2;
  } else {
   primitives = 1;
  }
 }


 if ( primitives == 2 ) {
  qglDrawElements( GL_TRIANGLES,
      numIndexes,
      GL_INDEX_TYPE,
      indexes );
  return;
 }

 if ( primitives == 1 ) {
  R_DrawStripElements( numIndexes, indexes, qglArrayElement );
  return;
 }

 if ( primitives == 3 ) {
  R_DrawStripElements( numIndexes, indexes, R_ArrayElementDiscrete );
  return;
 }


}
