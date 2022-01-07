
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ faceoptimizeindex; scalar_t__ edgeoptimizeindex; scalar_t__ vertexoptimizeindex; int numareas; scalar_t__ areas; int faceindexsize; scalar_t__ faceindex; int numfaces; scalar_t__ faces; int edgeindexsize; scalar_t__ edgeindex; int numedges; scalar_t__ edges; int numvertexes; scalar_t__ vertexes; } ;
typedef TYPE_1__ optimized_t ;
struct TYPE_5__ {int numareas; scalar_t__ areas; int faceindexsize; scalar_t__ faceindex; int numfaces; scalar_t__ faces; int edgeindexsize; scalar_t__ edgeindex; int numedges; scalar_t__ edges; int numvertexes; scalar_t__ vertexes; } ;


 int FreeMemory (scalar_t__) ;
 TYPE_2__ aasworld ;

void AAS_OptimizeStore(optimized_t *optimized)
{

 if (aasworld.vertexes) FreeMemory(aasworld.vertexes);
 aasworld.vertexes = optimized->vertexes;
 aasworld.numvertexes = optimized->numvertexes;

 if (aasworld.edges) FreeMemory(aasworld.edges);
 aasworld.edges = optimized->edges;
 aasworld.numedges = optimized->numedges;

 if (aasworld.edgeindex) FreeMemory(aasworld.edgeindex);
 aasworld.edgeindex = optimized->edgeindex;
 aasworld.edgeindexsize = optimized->edgeindexsize;

 if (aasworld.faces) FreeMemory(aasworld.faces);
 aasworld.faces = optimized->faces;
 aasworld.numfaces = optimized->numfaces;

 if (aasworld.faceindex) FreeMemory(aasworld.faceindex);
 aasworld.faceindex = optimized->faceindex;
 aasworld.faceindexsize = optimized->faceindexsize;

 if (aasworld.areas) FreeMemory(aasworld.areas);
 aasworld.areas = optimized->areas;
 aasworld.numareas = optimized->numareas;

 FreeMemory(optimized->vertexoptimizeindex);
 FreeMemory(optimized->edgeoptimizeindex);
 FreeMemory(optimized->faceoptimizeindex);
}
