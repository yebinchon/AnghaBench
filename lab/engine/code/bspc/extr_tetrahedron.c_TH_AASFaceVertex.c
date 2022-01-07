
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int firstedge; } ;
typedef TYPE_2__ aas_face_t ;
struct TYPE_7__ {int* edgeindex; TYPE_1__* edges; int * vertexes; } ;
struct TYPE_5__ {size_t* v; } ;


 int VectorCopy (int ,int ) ;
 TYPE_3__ aasworld ;
 size_t abs (int) ;

void TH_AASFaceVertex(aas_face_t *face, int index, vec3_t vertex)
{
 int edgenum, side;

 edgenum = aasworld.edgeindex[face->firstedge + index];
 side = edgenum < 0;
 VectorCopy(aasworld.vertexes[aasworld.edges[abs(edgenum)].v[side]], vertex);
}
