
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ th_triangle_t ;


 int AAS_LoadAASFile (char*,int ,int ) ;
 int Error (char*,char*) ;
 int Log_Print (char*,...) ;
 TYPE_1__* TH_AASToTriangleMesh () ;
 int TH_FreeMaxTH () ;
 int TH_InitMaxTH () ;
 int TH_TetrahedralDecomposition (TYPE_1__*) ;

void TH_AASToTetrahedrons(char *filename)
{
 th_triangle_t *triangles, *tri, *lasttri;
 int cnt;

 if (!AAS_LoadAASFile(filename, 0, 0))
  Error("couldn't load %s\n", filename);


 TH_InitMaxTH();

 triangles = TH_AASToTriangleMesh();

 cnt = 0;
 lasttri = ((void*)0);
 for (tri = triangles; tri; tri = tri->next)
 {
  cnt++;
  if (tri->prev != lasttri) Log_Print("BAH\n");
  lasttri = tri;
 }
 Log_Print("%6d triangles\n", cnt);

 TH_TetrahedralDecomposition(triangles);

 TH_FreeMaxTH();
}
