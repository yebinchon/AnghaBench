
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_15__ {int normal; int dist; } ;
typedef TYPE_1__ q1_dplane_t ;
struct TYPE_16__ {size_t planenum; int numedges; int firstedge; scalar_t__ side; } ;
typedef TYPE_2__ q1_dface_t ;
struct TYPE_17__ {struct TYPE_17__* next; int side; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_19__ {size_t* v; } ;
struct TYPE_18__ {int * point; } ;


 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int ,int *) ;
 int FindFloatPlane (int ,float) ;
 int FreeBrush (TYPE_3__*) ;
 int FreeBrushList (TYPE_3__*) ;
 int Log_Print (char*) ;
 int SplitBrush (TYPE_3__*,int,TYPE_3__**,TYPE_3__**) ;
 int VectorNegate (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int *,int *,int ) ;
 size_t abs (int) ;
 int memcpy (TYPE_1__*,int *,int) ;
 TYPE_5__* q1_dedges ;
 int * q1_dplanes ;
 int* q1_dsurfedges ;
 TYPE_4__* q1_dvertexes ;

bspbrush_t *Q1_SplitBrushWithFace(bspbrush_t *brush, q1_dface_t *face)
{
 int i, edgenum, side, planenum, splits;
 float dist;
 q1_dplane_t plane;
 vec_t *v1, *v2;
 vec3_t normal, edgevec;
 bspbrush_t *front, *back, *brushlist;

 memcpy(&plane, &q1_dplanes[face->planenum], sizeof(q1_dplane_t));

 if (face->side)
 {
  VectorNegate(plane.normal, plane.normal);
  plane.dist = -plane.dist;
 }
 splits = 0;
 brushlist = ((void*)0);
 for (i = 0; i < face->numedges; i++)
 {

  edgenum = q1_dsurfedges[face->firstedge + i];
  side = edgenum > 0;

  v1 = q1_dvertexes[q1_dedges[abs(edgenum)].v[side]].point;
  v2 = q1_dvertexes[q1_dedges[abs(edgenum)].v[!side]].point;


  VectorSubtract(v1, v2, edgevec);
  CrossProduct(edgevec, plane.normal, normal);
  VectorNormalize(normal);
  dist = DotProduct(normal, v1);

  planenum = FindFloatPlane(normal, dist);

  SplitBrush(brush, planenum, &front, &back);

  if (back)
  {

   back->side = brush->side;

   back->next = brushlist;
   brushlist = back;
   splits++;
  }
  if (!front)
  {
   Log_Print("Q1_SplitBrushWithFace: no new brush\n");
   FreeBrushList(brushlist);
   return ((void*)0);
  }

  front->side = brush->side;

  brush = front;
 }
 if (!splits)
 {
  FreeBrush(front);
  return ((void*)0);
 }
 front->next = brushlist;
 brushlist = front;
 return brushlist;
}
