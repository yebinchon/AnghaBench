
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numedges; int numfaces; int numareas; int* vertexoptimizeindex; int* edgeoptimizeindex; int* faceoptimizeindex; int * areas; scalar_t__ faceindexsize; int * faceindex; int * faces; scalar_t__ edgeindexsize; int * edgeindex; int * edges; scalar_t__ numvertexes; int * vertexes; } ;
typedef TYPE_1__ optimized_t ;
typedef int aas_vertex_t ;
typedef int aas_faceindex_t ;
typedef int aas_face_t ;
typedef int aas_edgeindex_t ;
typedef int aas_edge_t ;
typedef int aas_area_t ;
struct TYPE_5__ {int numvertexes; int numedges; int edgeindexsize; int numfaces; int faceindexsize; int numareas; } ;


 scalar_t__ GetClearedMemory (int) ;
 TYPE_2__ aasworld ;

void AAS_OptimizeAlloc(optimized_t *optimized)
{
 optimized->vertexes = (aas_vertex_t *) GetClearedMemory(aasworld.numvertexes * sizeof(aas_vertex_t));
 optimized->numvertexes = 0;
 optimized->edges = (aas_edge_t *) GetClearedMemory(aasworld.numedges * sizeof(aas_edge_t));
 optimized->numedges = 1;
 optimized->edgeindex = (aas_edgeindex_t *) GetClearedMemory(aasworld.edgeindexsize * sizeof(aas_edgeindex_t));
 optimized->edgeindexsize = 0;
 optimized->faces = (aas_face_t *) GetClearedMemory(aasworld.numfaces * sizeof(aas_face_t));
 optimized->numfaces = 1;
 optimized->faceindex = (aas_faceindex_t *) GetClearedMemory(aasworld.faceindexsize * sizeof(aas_faceindex_t));
 optimized->faceindexsize = 0;
 optimized->areas = (aas_area_t *) GetClearedMemory(aasworld.numareas * sizeof(aas_area_t));
 optimized->numareas = aasworld.numareas;

 optimized->vertexoptimizeindex = (int *) GetClearedMemory(aasworld.numvertexes * sizeof(int));
 optimized->edgeoptimizeindex = (int *) GetClearedMemory(aasworld.numedges * sizeof(int));
 optimized->faceoptimizeindex = (int *) GetClearedMemory(aasworld.numfaces * sizeof(int));
}
