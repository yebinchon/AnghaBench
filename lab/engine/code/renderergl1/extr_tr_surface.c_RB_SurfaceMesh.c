
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int numVerts; int numTriangles; int ofsTriangles; int ofsSt; } ;
typedef TYPE_3__ md3Surface_t ;
typedef int byte ;
struct TYPE_12__ {TYPE_2__* currentEntity; } ;
struct TYPE_11__ {int numIndexes; int numVertexes; int* indexes; float*** texCoords; } ;
struct TYPE_8__ {scalar_t__ oldframe; scalar_t__ frame; float backlerp; } ;
struct TYPE_9__ {TYPE_1__ e; } ;


 int LerpMeshVertexes (TYPE_3__*,float) ;
 int RB_CHECKOVERFLOW (int,int) ;
 TYPE_5__ backEnd ;
 TYPE_4__ tess ;

__attribute__((used)) static void RB_SurfaceMesh(md3Surface_t *surface) {
 int j;
 float backlerp;
 int *triangles;
 float *texCoords;
 int indexes;
 int Bob, Doug;
 int numVerts;

 if ( backEnd.currentEntity->e.oldframe == backEnd.currentEntity->e.frame ) {
  backlerp = 0;
 } else {
  backlerp = backEnd.currentEntity->e.backlerp;
 }

 RB_CHECKOVERFLOW( surface->numVerts, surface->numTriangles*3 );

 LerpMeshVertexes (surface, backlerp);

 triangles = (int *) ((byte *)surface + surface->ofsTriangles);
 indexes = surface->numTriangles * 3;
 Bob = tess.numIndexes;
 Doug = tess.numVertexes;
 for (j = 0 ; j < indexes ; j++) {
  tess.indexes[Bob + j] = Doug + triangles[j];
 }
 tess.numIndexes += indexes;

 texCoords = (float *) ((byte *)surface + surface->ofsSt);

 numVerts = surface->numVerts;
 for ( j = 0; j < numVerts; j++ ) {
  tess.texCoords[Doug + j][0][0] = texCoords[j*2+0];
  tess.texCoords[Doug + j][0][1] = texCoords[j*2+1];

 }

 tess.numVertexes += surface->numVerts;

}
