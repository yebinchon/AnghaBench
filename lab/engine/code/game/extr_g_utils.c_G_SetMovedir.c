
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int member_1; int member_2; int member_0; } ;
typedef TYPE_1__ vec3_t ;


 int AngleVectors (TYPE_1__,TYPE_1__,int *,int *) ;
 int VectorClear (TYPE_1__) ;
 scalar_t__ VectorCompare (TYPE_1__,TYPE_1__) ;
 int VectorCopy (TYPE_1__,TYPE_1__) ;

void G_SetMovedir( vec3_t angles, vec3_t movedir ) {
 static vec3_t VEC_UP = {0, -1, 0};
 static vec3_t MOVEDIR_UP = {0, 0, 1};
 static vec3_t VEC_DOWN = {0, -2, 0};
 static vec3_t MOVEDIR_DOWN = {0, 0, -1};

 if ( VectorCompare (angles, VEC_UP) ) {
  VectorCopy (MOVEDIR_UP, movedir);
 } else if ( VectorCompare (angles, VEC_DOWN) ) {
  VectorCopy (MOVEDIR_DOWN, movedir);
 } else {
  AngleVectors (angles, movedir, ((void*)0), ((void*)0));
 }
 VectorClear( angles );
}
