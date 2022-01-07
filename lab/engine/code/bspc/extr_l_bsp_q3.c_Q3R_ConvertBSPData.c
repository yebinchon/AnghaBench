
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int q3_dsurface_t ;
typedef int q3_drawVert_t ;
typedef int q3_dbrushside_t ;
struct TYPE_12__ {int shaderNum; int planeNum; } ;
struct TYPE_11__ {int patchHeight; int patchWidth; int ** lightmapVecs; int * lightmapOrigin; int lightmapHeight; int lightmapWidth; int lightmapY; int lightmapX; int lightmapNum; int numIndexes; int firstIndex; int numVerts; int firstVert; int surfaceType; int fogNum; int shaderNum; } ;
struct TYPE_10__ {int * color; int * lightmap; int * st; int * normal; int * xyz; } ;
struct TYPE_9__ {int shaderNum; int planeNum; } ;
struct TYPE_8__ {int patchHeight; int patchWidth; int ** lightmapVecs; int * lightmapOrigin; int lightmapHeight; int lightmapWidth; int ** lightmapXY; int * lightmapNum; int numIndexes; int firstIndex; int numVerts; int firstVert; int surfaceType; int fogNum; int shaderNum; } ;
struct TYPE_7__ {int ** color; int ** lightmap; int * st; int * normal; int * xyz; } ;


 void* GetMemory (int) ;
 TYPE_6__* q3_dbrushsides ;
 TYPE_5__* q3_drawSurfaces ;
 TYPE_4__* q3_drawVerts ;
 int q3_numDrawSurfaces ;
 int q3_numDrawVerts ;
 int q3_numbrushsides ;
 TYPE_3__* q3r_dbrushsides ;
 TYPE_2__* q3r_drawSurfaces ;
 TYPE_1__* q3r_drawVerts ;
 int q3r_numDrawSurfaces ;
 int q3r_numDrawVerts ;
 int q3r_numbrushsides ;

__attribute__((used)) static void Q3R_ConvertBSPData(void)
{
 int i, j;

 q3_numbrushsides = q3r_numbrushsides;
 q3_dbrushsides = GetMemory(q3_numbrushsides * sizeof(q3_dbrushside_t));
 for( i = 0; i < q3_numbrushsides; i++ ) {
  q3_dbrushsides[i].planeNum = q3r_dbrushsides[i].planeNum;
  q3_dbrushsides[i].shaderNum = q3r_dbrushsides[i].shaderNum;
 }

 q3_numDrawVerts = q3r_numDrawVerts;
 q3_drawVerts = GetMemory(q3_numDrawVerts * sizeof(q3_drawVert_t));
 for( i = 0; i < q3_numDrawVerts; i++ ) {
  for( j = 0; j < 3; j++ ) {
   q3_drawVerts[i].xyz[j] = q3r_drawVerts[i].xyz[j];
   q3_drawVerts[i].normal[j] = q3r_drawVerts[i].normal[j];
  }
  for( j = 0; j < 2; j++ ) {
   q3_drawVerts[i].st[j] = q3r_drawVerts[i].st[j];
  }
  for( j = 0; j < 2; j++ ) {
   q3_drawVerts[i].lightmap[j] = q3r_drawVerts[i].lightmap[0][j];
  }
  for( j = 0; j < 4; j++ ) {
   q3_drawVerts[i].color[j] = q3r_drawVerts[i].color[0][j];
  }
 }

 q3_numDrawSurfaces = q3r_numDrawSurfaces;
 q3_drawSurfaces = GetMemory(q3_numDrawSurfaces * sizeof(q3_dsurface_t));
 for( i = 0; i < q3_numDrawSurfaces; i++ ) {
  q3_drawSurfaces[i].shaderNum = q3r_drawSurfaces[i].shaderNum;
  q3_drawSurfaces[i].fogNum = q3r_drawSurfaces[i].fogNum;
  q3_drawSurfaces[i].surfaceType = q3r_drawSurfaces[i].surfaceType;

  q3_drawSurfaces[i].firstVert = q3r_drawSurfaces[i].firstVert;
  q3_drawSurfaces[i].numVerts = q3r_drawSurfaces[i].numVerts;

  q3_drawSurfaces[i].firstIndex = q3r_drawSurfaces[i].firstIndex;
  q3_drawSurfaces[i].numIndexes = q3r_drawSurfaces[i].numIndexes;

  q3_drawSurfaces[i].lightmapNum = q3r_drawSurfaces[i].lightmapNum[0];
  q3_drawSurfaces[i].lightmapX = q3r_drawSurfaces[i].lightmapXY[0][0];
  q3_drawSurfaces[i].lightmapY = q3r_drawSurfaces[i].lightmapXY[0][1];
  q3_drawSurfaces[i].lightmapWidth = q3r_drawSurfaces[i].lightmapWidth;
  q3_drawSurfaces[i].lightmapHeight = q3r_drawSurfaces[i].lightmapHeight;

  for( j = 0; j < 3; j++ ) {
   q3_drawSurfaces[i].lightmapOrigin[j] = q3r_drawSurfaces[i].lightmapOrigin[j];
   q3_drawSurfaces[i].lightmapVecs[0][j] = q3r_drawSurfaces[i].lightmapVecs[0][j];
   q3_drawSurfaces[i].lightmapVecs[1][j] = q3r_drawSurfaces[i].lightmapVecs[1][j];
   q3_drawSurfaces[i].lightmapVecs[2][j] = q3r_drawSurfaces[i].lightmapVecs[2][j];
  }

  q3_drawSurfaces[i].patchWidth = q3r_drawSurfaces[i].patchWidth;
  q3_drawSurfaces[i].patchHeight = q3r_drawSurfaces[i].patchHeight;
 }
}
