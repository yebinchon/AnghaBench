
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_6__ {int numVerts; int firstVert; } ;
typedef TYPE_1__ q3_dsurface_t ;
struct TYPE_7__ {int normal; int dist; } ;
typedef TYPE_2__ q3_dplane_t ;
struct TYPE_8__ {int * xyz; } ;


 int ChopWindingInPlace (int **,int ,float,double) ;
 int * CopyWinding (int *) ;
 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int ,int *) ;
 int FreeWinding (int *) ;
 int Q3_SurfacePlane (TYPE_1__*,int ,int *) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int *,int *,int ) ;
 float WindingArea (int *) ;
 TYPE_3__* q3_drawVerts ;

float Q3_FaceOnWinding(q3_dsurface_t *surface, winding_t *winding)
{
 int i;
 float dist, area;
 q3_dplane_t plane;
 vec_t *v1, *v2;
 vec3_t normal, edgevec;
 winding_t *w;


 w = CopyWinding(winding);

 Q3_SurfacePlane(surface, plane.normal, &plane.dist);

 for (i = 0; i < surface->numVerts && w; i++)
 {
  v1 = q3_drawVerts[surface->firstVert + ((i) % surface->numVerts)].xyz;
  v2 = q3_drawVerts[surface->firstVert + ((i+1) % surface->numVerts)].xyz;


  VectorSubtract(v2, v1, edgevec);
  CrossProduct(edgevec, plane.normal, normal);
  VectorNormalize(normal);
  dist = DotProduct(normal, v1);

  ChopWindingInPlace(&w, normal, dist, -0.1);
 }
 if (w)
 {
  area = WindingArea(w);
  FreeWinding(w);
  return area;
 }
 return 0;
}
