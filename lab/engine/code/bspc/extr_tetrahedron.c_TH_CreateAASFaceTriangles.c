
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {int front; } ;
typedef TYPE_1__ th_triangle_t ;
struct TYPE_11__ {int numedges; } ;
typedef TYPE_2__ aas_face_t ;
struct TYPE_12__ {TYPE_1__* triangles; } ;


 int TH_AASFaceVertex (TYPE_2__*,int,int ) ;
 int TH_AddTriangleToList (TYPE_1__**,TYPE_1__*) ;
 scalar_t__ TH_Colinear (int ,int ,int ) ;
 int TH_CreateTriangle (int*) ;
 int TH_FaceCenter (TYPE_2__*,int ) ;
 int TH_FindOrCreateVertex (int ) ;
 TYPE_3__ thworld ;

th_triangle_t *TH_CreateAASFaceTriangles(aas_face_t *face)
{
 int i, first, verts[3], trinum;
 vec3_t p0, p1, p2, p3, p4, center;
 th_triangle_t *tri, *triangles;

 triangles = ((void*)0);

 for (i = 0; i < face->numedges; i++)
 {
  TH_AASFaceVertex(face, (face->numedges + i-2)%face->numedges, p0);
  TH_AASFaceVertex(face, (face->numedges + i-1)%face->numedges, p1);
  TH_AASFaceVertex(face, (i )%face->numedges, p2);
  if (TH_Colinear(p2, p0, p1)) continue;
  TH_AASFaceVertex(face, (i+1)%face->numedges, p3);
  TH_AASFaceVertex(face, (i+2)%face->numedges, p4);
  if (TH_Colinear(p2, p3, p4)) continue;
  break;
 }

 if (i < face->numedges)
 {

  first = i;
  TH_AASFaceVertex(face, first, p0);
  verts[0] = TH_FindOrCreateVertex(p0);
  for (i = 1; i < face->numedges-1; i++)
  {
   TH_AASFaceVertex(face, (first+i )%face->numedges, p1);
   TH_AASFaceVertex(face, (first+i+1)%face->numedges, p2);
   verts[1] = TH_FindOrCreateVertex(p1);
   verts[2] = TH_FindOrCreateVertex(p2);
   trinum = TH_CreateTriangle(verts);
   tri = &thworld.triangles[trinum];
   tri->front = -1;
   TH_AddTriangleToList(&triangles, tri);
  }
 }
 else
 {

  TH_FaceCenter(face, center);

  verts[0] = TH_FindOrCreateVertex(center);
  for (i = 0; i < face->numedges; i++)
  {
   TH_AASFaceVertex(face, (i )%face->numedges, p1);
   TH_AASFaceVertex(face, (i+1)%face->numedges, p2);
   if (TH_Colinear(center, p1, p2)) continue;
   verts[1] = TH_FindOrCreateVertex(p1);
   verts[2] = TH_FindOrCreateVertex(p2);
   trinum = TH_CreateTriangle(verts);
   tri = &thworld.triangles[trinum];
   tri->front = -1;
   TH_AddTriangleToList(&triangles, tri);
  }
 }
 return triangles;
}
