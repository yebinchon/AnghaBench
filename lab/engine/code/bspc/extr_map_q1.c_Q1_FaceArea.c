
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_6__ {size_t firstedge; int numedges; } ;
typedef TYPE_1__ q1_dface_t ;
struct TYPE_7__ {size_t* v; } ;
typedef TYPE_2__ q1_dedge_t ;
struct TYPE_8__ {int * point; } ;


 int CrossProduct (int ,int ,int ) ;
 double VectorLength (int ) ;
 int VectorSubtract (int *,int *,int ) ;
 TYPE_2__* q1_dedges ;
 TYPE_3__* q1_dvertexes ;

float Q1_FaceArea(q1_dface_t *face)
{
 int i;
 float total;
 vec_t *v;
 vec3_t d1, d2, cross;
 q1_dedge_t *edge;

 edge = &q1_dedges[face->firstedge];
 v = q1_dvertexes[edge->v[0]].point;

 total = 0;
 for (i = 1; i < face->numedges - 1; i++)
 {
  edge = &q1_dedges[face->firstedge + i];
  VectorSubtract(q1_dvertexes[edge->v[0]].point, v, d1);
  VectorSubtract(q1_dvertexes[edge->v[1]].point, v, d2);
  CrossProduct(d1, d2, cross);
  total += 0.5 * VectorLength(cross);
 }
 return total;
}
