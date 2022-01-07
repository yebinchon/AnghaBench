
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_5__ {size_t firstedge; } ;
typedef TYPE_1__ q1_dface_t ;
struct TYPE_7__ {size_t* v; } ;
struct TYPE_6__ {int * point; } ;


 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int *,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int *,int *,int ) ;
 size_t abs (int) ;
 TYPE_3__* q1_dedges ;
 int* q1_dsurfedges ;
 TYPE_2__* q1_dvertexes ;

void Q1_FacePlane(q1_dface_t *face, vec3_t normal, float *dist)
{
 vec_t *v1, *v2, *v3;
 vec3_t vec1, vec2;
 int side, edgenum;

 edgenum = q1_dsurfedges[face->firstedge];
 side = edgenum < 0;
 v1 = q1_dvertexes[q1_dedges[abs(edgenum)].v[side]].point;
 v2 = q1_dvertexes[q1_dedges[abs(edgenum)].v[!side]].point;
 edgenum = q1_dsurfedges[face->firstedge+1];
 side = edgenum < 0;
 v3 = q1_dvertexes[q1_dedges[abs(edgenum)].v[!side]].point;

 VectorSubtract(v2, v1, vec1);
 VectorSubtract(v3, v1, vec2);

 CrossProduct(vec1, vec2, normal);
 VectorNormalize(normal);
 *dist = DotProduct(v1, normal);
}
