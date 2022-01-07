
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ back; scalar_t__ front; } ;
typedef TYPE_1__ th_triangle_t ;
struct TYPE_7__ {int numtetrahedrons; int numtriangles; TYPE_1__* triangles; } ;


 int Log_Print (char*,int) ;
 int TH_CreateTetrahedron (int*) ;
 int TH_FindTetrahedron1 (TYPE_1__*,int*) ;
 int TH_FindTetrahedron2 (TYPE_1__*,int*) ;
 int qprintf (char*,int) ;
 TYPE_2__ thworld ;

void TH_TetrahedralDecomposition(th_triangle_t *triangles)
{
 int i, thtriangles[4], numtriangles;
 th_triangle_t *donetriangles, *tri;

 donetriangles = ((void*)0);
 qprintf("%6d tetrahedrons", thworld.numtetrahedrons);
 do
 {
  do
  {
   numtriangles = 0;
   for (i = 1; i < thworld.numtriangles; i++)
   {
    tri = &thworld.triangles[i];
    if (tri->front && tri->back) continue;

    if (!TH_FindTetrahedron1(tri, thtriangles))
    {

     {
      continue;
     }
    }
    numtriangles++;

    TH_CreateTetrahedron(thtriangles);
    qprintf("\r%6d", thworld.numtetrahedrons);
   }
  } while(numtriangles);
   for (i = 1; i < thworld.numtriangles; i++)
  {
   tri = &thworld.triangles[i];
   if (tri->front && tri->back) continue;


   {
    if (!TH_FindTetrahedron2(tri, thtriangles))
    {
     continue;
    }
   }
   numtriangles++;

   TH_CreateTetrahedron(thtriangles);
   qprintf("\r%6d", thworld.numtetrahedrons);
  }
 } while(numtriangles);

 numtriangles = 0;
 for (i = 1; i < thworld.numtriangles; i++)
 {
  tri = &thworld.triangles[i];
  if (!tri->front && !tri->back) numtriangles++;
 }
 Log_Print("\r%6d triangles with front only\n", numtriangles);
 Log_Print("\r%6d tetrahedrons\n", thworld.numtetrahedrons-1);
}
