
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
struct TYPE_2__ {int point; } ;


 scalar_t__ DotProduct (int ,int ) ;
 int Error (char*) ;
 size_t MAX_SUPERVERTS ;
 scalar_t__ OFF_EPSILON ;
 int VectorCopy (int ,int ) ;
 scalar_t__ VectorLength (int ) ;
 int VectorMA (int ,scalar_t__,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int c_degenerate ;
 int c_tjunctions ;
 TYPE_1__* dvertexes ;
 int edge_dir ;
 int edge_start ;
 int* edge_verts ;
 scalar_t__ fabs (scalar_t__) ;
 int num_edge_verts ;
 size_t numsuperverts ;
 int* superverts ;

void TestEdge (vec_t start, vec_t end, int p1, int p2, int startvert)
{
 int j, k;
 vec_t dist;
 vec3_t delta;
 vec3_t exact;
 vec3_t off;
 vec_t error;
 vec3_t p;

 if (p1 == p2)
 {
  c_degenerate++;
  return;
 }

 for (k=startvert ; k<num_edge_verts ; k++)
 {
  j = edge_verts[k];
  if (j==p1 || j == p2)
   continue;

  VectorCopy (dvertexes[j].point, p);

  VectorSubtract (p, edge_start, delta);
  dist = DotProduct (delta, edge_dir);
  if (dist <=start || dist >= end)
   continue;
  VectorMA (edge_start, dist, edge_dir, exact);
  VectorSubtract (p, exact, off);
  error = VectorLength (off);

  if (fabs(error) > OFF_EPSILON)
   continue;


  c_tjunctions++;
  TestEdge (start, dist, p1, j, k+1);
  TestEdge (dist, end, j, p2, k+1);
  return;
 }


 if (numsuperverts >= MAX_SUPERVERTS)
  Error ("MAX_SUPERVERTS");
 superverts[numsuperverts] = p1;
 numsuperverts++;
}
