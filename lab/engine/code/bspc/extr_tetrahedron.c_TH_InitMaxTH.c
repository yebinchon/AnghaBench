
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int th_vertex_t ;
typedef int th_triangle_t ;
typedef int th_tetrahedron_t ;
typedef int th_plane_t ;
typedef int th_edge_t ;
struct TYPE_2__ {int trianglehash; int edgehash; int planehash; int vertexhash; int * tetrahedrons; int * triangles; int * edges; int * planes; int * vertexes; } ;


 int EDGEHASH_SIZE ;
 scalar_t__ GetClearedMemory (int) ;
 int MAX_TH_EDGES ;
 int MAX_TH_PLANES ;
 int MAX_TH_TETRAHEDRONS ;
 int MAX_TH_TRIANGLES ;
 int MAX_TH_VERTEXES ;
 int PLANEHASH_SIZE ;
 int TRIANGLEHASH_SIZE ;
 int VERTEXHASH_SIZE ;
 int memset (int ,int ,int) ;
 TYPE_1__ thworld ;

void TH_InitMaxTH(void)
{

 thworld.vertexes = (th_vertex_t *) GetClearedMemory(MAX_TH_VERTEXES * sizeof(th_vertex_t));
 thworld.planes = (th_plane_t *) GetClearedMemory(MAX_TH_PLANES * sizeof(th_plane_t));
 thworld.edges = (th_edge_t *) GetClearedMemory(MAX_TH_EDGES * sizeof(th_edge_t));
 thworld.triangles = (th_triangle_t *) GetClearedMemory(MAX_TH_TRIANGLES * sizeof(th_triangle_t));
 thworld.tetrahedrons = (th_tetrahedron_t *) GetClearedMemory(MAX_TH_TETRAHEDRONS * sizeof(th_tetrahedron_t));

 memset(thworld.vertexhash, 0, VERTEXHASH_SIZE * sizeof(th_vertex_t *));
 memset(thworld.planehash, 0, PLANEHASH_SIZE * sizeof(th_plane_t *));
 memset(thworld.edgehash, 0, EDGEHASH_SIZE * sizeof(th_edge_t *));
 memset(thworld.trianglehash, 0, TRIANGLEHASH_SIZE * sizeof(th_triangle_t *));
}
