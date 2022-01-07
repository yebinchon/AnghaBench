
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int srfVert_t ;
struct TYPE_3__ {int numVerts; int numIndexes; int * indexes; int * vertexes; } ;
typedef TYPE_1__ queuedSurface_t ;
typedef int glIndex_t ;
struct TYPE_4__ {int numSurfaces; int vertexCommitSize; int indexCommitSize; TYPE_1__* surfaces; } ;


 TYPE_2__ vcq ;

void VaoCache_AddSurface(srfVert_t *verts, int numVerts, glIndex_t *indexes, int numIndexes)
{
 queuedSurface_t *queueEntry = vcq.surfaces + vcq.numSurfaces;
 queueEntry->vertexes = verts;
 queueEntry->numVerts = numVerts;
 queueEntry->indexes = indexes;
 queueEntry->numIndexes = numIndexes;
 vcq.numSurfaces++;

 vcq.vertexCommitSize += sizeof(srfVert_t) * numVerts;
 vcq.indexCommitSize += sizeof(glIndex_t) * numIndexes;
}
