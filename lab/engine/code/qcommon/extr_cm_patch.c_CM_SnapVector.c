
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;


 scalar_t__ NORMAL_EPSILON ;
 int VectorClear (int*) ;
 scalar_t__ fabs (int) ;

void CM_SnapVector(vec3_t normal) {
 int i;

 for (i=0 ; i<3 ; i++)
 {
  if ( fabs(normal[i] - 1) < NORMAL_EPSILON )
  {
   VectorClear (normal);
   normal[i] = 1;
   break;
  }
  if ( fabs(normal[i] - -1) < NORMAL_EPSILON )
  {
   VectorClear (normal);
   normal[i] = -1;
   break;
  }
 }
}
