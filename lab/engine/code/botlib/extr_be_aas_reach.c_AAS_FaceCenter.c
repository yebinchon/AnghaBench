
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int numedges; int firstedge; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_5__ {size_t* v; } ;
typedef TYPE_2__ aas_edge_t ;
struct TYPE_6__ {int * vertexes; int * edgeindex; TYPE_2__* edges; TYPE_1__* faces; } ;


 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorScale (int ,float,int ) ;
 TYPE_3__ aasworld ;
 size_t abs (int ) ;

void AAS_FaceCenter(int facenum, vec3_t center)
{
 int i;
 float scale;
 aas_face_t *face;
 aas_edge_t *edge;

 face = &aasworld.faces[facenum];

 VectorClear(center);
 for (i = 0; i < face->numedges; i++)
 {
  edge = &aasworld.edges[abs(aasworld.edgeindex[face->firstedge + i])];
  VectorAdd(center, aasworld.vertexes[edge->v[0]], center);
  VectorAdd(center, aasworld.vertexes[edge->v[1]], center);
 }
 scale = 0.5 / face->numedges;
 VectorScale(center, scale, center);
}
