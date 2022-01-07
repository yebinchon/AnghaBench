
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int numedges; int firstedge; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_6__ {size_t* v; } ;
typedef TYPE_2__ aas_edge_t ;
struct TYPE_7__ {int* edgeindex; int * vertexes; TYPE_2__* edges; } ;


 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorScale (int ,double,int ) ;
 TYPE_3__ aasworld ;
 size_t abs (int) ;

void TH_FaceCenter(aas_face_t *face, vec3_t center)
{
 int i, edgenum, side;
 aas_edge_t *edge;

 VectorClear(center);
 for (i = 0; i < face->numedges; i++)
 {
  edgenum = abs(aasworld.edgeindex[face->firstedge + i]);
  side = edgenum < 0;
  edge = &aasworld.edges[abs(edgenum)];
  VectorAdd(aasworld.vertexes[edge->v[side]], center, center);
 }
 VectorScale(center, 1.0 / face->numedges, center);
}
