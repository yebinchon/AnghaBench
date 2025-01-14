
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {float* normal; float* tangent; int xyz; } ;
typedef TYPE_3__ mdvVertex_t ;
struct TYPE_11__ {int numVerts; TYPE_3__* verts; } ;
typedef TYPE_4__ mdvSurface_t ;
typedef float int16_t ;
struct TYPE_13__ {TYPE_2__* currentEntity; } ;
struct TYPE_12__ {float** xyz; size_t numVertexes; float** normal; float** tangent; } ;
struct TYPE_8__ {int frame; int oldframe; } ;
struct TYPE_9__ {TYPE_1__ e; } ;


 int VectorCopy (int ,float*) ;
 int VectorCopy4 (float*,float*) ;
 int VectorLerp (int ,int ,float,float*) ;
 TYPE_6__ backEnd ;
 TYPE_5__ tess ;

__attribute__((used)) static void LerpMeshVertexes(mdvSurface_t *surf, float backlerp)
{
 float *outXyz;
 int16_t *outNormal, *outTangent;
 mdvVertex_t *newVerts;
 int vertNum;

 newVerts = surf->verts + backEnd.currentEntity->e.frame * surf->numVerts;

 outXyz = tess.xyz[tess.numVertexes];
 outNormal = tess.normal[tess.numVertexes];
 outTangent = tess.tangent[tess.numVertexes];

 if (backlerp == 0)
 {




  for (vertNum=0 ; vertNum < surf->numVerts ; vertNum++)
  {
   VectorCopy(newVerts->xyz, outXyz);
   VectorCopy4(newVerts->normal, outNormal);
   VectorCopy4(newVerts->tangent, outTangent);

   newVerts++;
   outXyz += 4;
   outNormal += 4;
   outTangent += 4;
  }
 }
 else
 {




  mdvVertex_t *oldVerts;

  oldVerts = surf->verts + backEnd.currentEntity->e.oldframe * surf->numVerts;

  for (vertNum=0 ; vertNum < surf->numVerts ; vertNum++)
  {
   VectorLerp(newVerts->xyz, oldVerts->xyz, backlerp, outXyz);

   outNormal[0] = (int16_t)(newVerts->normal[0] * (1.0f - backlerp) + oldVerts->normal[0] * backlerp);
   outNormal[1] = (int16_t)(newVerts->normal[1] * (1.0f - backlerp) + oldVerts->normal[1] * backlerp);
   outNormal[2] = (int16_t)(newVerts->normal[2] * (1.0f - backlerp) + oldVerts->normal[2] * backlerp);
   outNormal[3] = 0;

   outTangent[0] = (int16_t)(newVerts->tangent[0] * (1.0f - backlerp) + oldVerts->tangent[0] * backlerp);
   outTangent[1] = (int16_t)(newVerts->tangent[1] * (1.0f - backlerp) + oldVerts->tangent[1] * backlerp);
   outTangent[2] = (int16_t)(newVerts->tangent[2] * (1.0f - backlerp) + oldVerts->tangent[2] * backlerp);
   outTangent[3] = newVerts->tangent[3];

   newVerts++;
   oldVerts++;
   outXyz += 4;
   outNormal += 4;
   outTangent += 4;
  }
 }

}
