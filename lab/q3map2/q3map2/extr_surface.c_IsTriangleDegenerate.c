
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_3__ {int xyz; } ;
typedef TYPE_1__ bspDrawVert_t ;


 int CrossProduct (int ,int ,int ) ;
 float TINY_AREA ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean IsTriangleDegenerate( bspDrawVert_t *points, int a, int b, int c ){
 vec3_t v1, v2, v3;
 float d;



 VectorSubtract( points[ b ].xyz, points[ a ].xyz, v1 );
 VectorSubtract( points[ c ].xyz, points[ a ].xyz, v2 );
 CrossProduct( v1, v2, v3 );
 d = VectorLength( v3 );


 if ( d < TINY_AREA ) {
  return qtrue;
 }


 return qfalse;
}
