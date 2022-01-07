
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
typedef int node_t ;
struct TYPE_5__ {int numpoints; int* vertexnums; int badstartvert; scalar_t__* split; scalar_t__ merged; } ;
typedef TYPE_1__ face_t ;
struct TYPE_6__ {int point; } ;


 int FaceFromSuperverts (int *,TYPE_1__*,int) ;
 int FindEdgeVerts (int ,int ) ;
 int MAX_SUPERVERTS ;
 int TestEdge (int ,int ,int,int,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int c_badstartverts ;
 int c_facecollapse ;
 TYPE_2__* dvertexes ;
 int edge_dir ;
 int edge_start ;
 int numsuperverts ;

void FixFaceEdges (node_t *node, face_t *f)
{
 int p1, p2;
 int i;
 vec3_t e2;
 vec_t len;
 int count[MAX_SUPERVERTS], start[MAX_SUPERVERTS];
 int base;

 if (f->merged || f->split[0] || f->split[1])
  return;

 numsuperverts = 0;

 for (i=0 ; i<f->numpoints ; i++)
 {
  p1 = f->vertexnums[i];
  p2 = f->vertexnums[(i+1)%f->numpoints];

  VectorCopy (dvertexes[p1].point, edge_start);
  VectorCopy (dvertexes[p2].point, e2);

  FindEdgeVerts (edge_start, e2);

  VectorSubtract (e2, edge_start, edge_dir);
  len = VectorNormalize(edge_dir);

  start[i] = numsuperverts;
  TestEdge (0, len, p1, p2, 0);

  count[i] = numsuperverts - start[i];
 }

 if (numsuperverts < 3)
 {
  f->numpoints = 0;
  c_facecollapse++;
  return;
 }




 for (i=0 ; i<f->numpoints ; i++)
 {
  if (count[i] == 1 && count[(i+f->numpoints-1)%f->numpoints] == 1)
   break;
 }
 if (i == f->numpoints)
 {
  f->badstartvert = 1;
  c_badstartverts++;
  base = 0;
 }
 else
 {
  base = start[i];
 }


 FaceFromSuperverts (node, f, base);
}
