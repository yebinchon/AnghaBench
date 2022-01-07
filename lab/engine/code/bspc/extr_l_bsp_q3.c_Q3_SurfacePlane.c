
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_4__ {size_t firstVert; int numVerts; } ;
typedef TYPE_1__ q3_dsurface_t ;
struct TYPE_5__ {float* xyz; } ;


 int CrossProduct (double*,double*,double*) ;
 float DotProduct (float*,double*) ;
 int Log_Print (char*,int,float,float,float) ;
 double VectorLength (double*) ;
 int VectorNormalize (double*) ;
 int VectorSubtract (float*,float*,double*) ;
 int printf (char*,...) ;
 int q3_drawSurfaces ;
 TYPE_2__* q3_drawVerts ;

void Q3_SurfacePlane(q3_dsurface_t *surface, vec3_t normal, float *dist)
{
 int i;
 float *p0, *p1, *p2;
 vec3_t t1, t2;

 p0 = q3_drawVerts[surface->firstVert].xyz;
 for (i = 1; i < surface->numVerts-1; i++)
 {
  p1 = q3_drawVerts[surface->firstVert + ((i) % surface->numVerts)].xyz;
  p2 = q3_drawVerts[surface->firstVert + ((i+1) % surface->numVerts)].xyz;
  VectorSubtract(p0, p1, t1);
  VectorSubtract(p2, p1, t2);
  CrossProduct(t1, t2, normal);
  VectorNormalize(normal);
  if (VectorLength(normal)) break;
 }
 if (VectorLength(normal) < 0.9)
 {
  printf("surface %td bogus normal vector %f %f %f\n", surface - q3_drawSurfaces, normal[0], normal[1], normal[2]);
  printf("t1 = %f %f %f, t2 = %f %f %f\n", t1[0], t1[1], t1[2], t2[0], t2[1], t2[2]);
  for (i = 0; i < surface->numVerts; i++)
  {
   p1 = q3_drawVerts[surface->firstVert + ((i) % surface->numVerts)].xyz;
   Log_Print("p%d = %f %f %f\n", i, p1[0], p1[1], p1[2]);
  }
 }
 *dist = DotProduct(p0, normal);
}
