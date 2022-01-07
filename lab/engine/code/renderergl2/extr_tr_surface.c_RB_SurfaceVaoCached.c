
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int srfVert_t ;
typedef void* qboolean ;
typedef int glIndex_t ;
struct TYPE_5__ {int isPortal; int isSky; } ;
struct TYPE_4__ {int dlightBits; int pshadowBits; int numIndexes; void* useCacheVao; void* useInternalVao; scalar_t__ numVertexes; int cubemapIndex; int fogNum; TYPE_2__* shader; } ;


 int RB_BeginSurface (TYPE_2__*,int ,int ) ;
 int RB_EndSurface () ;
 int ShaderRequiresCPUDeforms (TYPE_2__*) ;
 int VaoCache_AddSurface (int *,int,int *,int) ;
 int VaoCache_BindVao () ;
 int VaoCache_CheckAdd (void**,void**,void**,int,int) ;
 int VaoCache_InitQueue () ;
 int VaoCache_RecycleIndexBuffer () ;
 int VaoCache_RecycleVertexBuffer () ;
 void* qfalse ;
 void* qtrue ;
 TYPE_1__ tess ;

__attribute__((used)) static qboolean RB_SurfaceVaoCached(int numVerts, srfVert_t *verts, int numIndexes, glIndex_t *indexes, int dlightBits, int pshadowBits)
{
 qboolean recycleVertexBuffer = qfalse;
 qboolean recycleIndexBuffer = qfalse;
 qboolean endSurface = qfalse;

 if (!(!ShaderRequiresCPUDeforms(tess.shader) && !tess.shader->isSky && !tess.shader->isPortal))
  return qfalse;

 if (!numIndexes || !numVerts)
  return qfalse;

 VaoCache_BindVao();

 tess.dlightBits |= dlightBits;
 tess.pshadowBits |= pshadowBits;

 VaoCache_CheckAdd(&endSurface, &recycleVertexBuffer, &recycleIndexBuffer, numVerts, numIndexes);

 if (endSurface)
 {
  RB_EndSurface();
  RB_BeginSurface(tess.shader, tess.fogNum, tess.cubemapIndex);
 }

 if (recycleVertexBuffer)
  VaoCache_RecycleVertexBuffer();

 if (recycleIndexBuffer)
  VaoCache_RecycleIndexBuffer();

 if (!tess.numVertexes)
  VaoCache_InitQueue();

 VaoCache_AddSurface(verts, numVerts, indexes, numIndexes);

 tess.numIndexes += numIndexes;
 tess.numVertexes += numVerts;
 tess.useInternalVao = qfalse;
 tess.useCacheVao = qtrue;

 return qtrue;
}
