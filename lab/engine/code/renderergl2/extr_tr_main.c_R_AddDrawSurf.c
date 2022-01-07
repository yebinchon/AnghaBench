
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int surfaceType_t ;
struct TYPE_8__ {int sortedIndex; } ;
typedef TYPE_3__ shader_t ;
struct TYPE_7__ {int numDrawSurfs; TYPE_1__* drawSurfs; } ;
struct TYPE_9__ {int shiftedEntityNum; TYPE_2__ refdef; } ;
struct TYPE_6__ {int sort; int cubemapIndex; int * surface; } ;


 int DRAWSURF_MASK ;
 int QSORT_FOGNUM_SHIFT ;
 int QSORT_PSHADOW_SHIFT ;
 int QSORT_SHADERNUM_SHIFT ;
 TYPE_4__ tr ;

void R_AddDrawSurf( surfaceType_t *surface, shader_t *shader,
       int fogIndex, int dlightMap, int pshadowMap, int cubemap ) {
 int index;



 index = tr.refdef.numDrawSurfs & DRAWSURF_MASK;


 tr.refdef.drawSurfs[index].sort = (shader->sortedIndex << QSORT_SHADERNUM_SHIFT)
  | tr.shiftedEntityNum | ( fogIndex << QSORT_FOGNUM_SHIFT )
  | ((int)pshadowMap << QSORT_PSHADOW_SHIFT) | (int)dlightMap;
 tr.refdef.drawSurfs[index].cubemapIndex = cubemap;
 tr.refdef.drawSurfs[index].surface = surface;
 tr.refdef.numDrawSurfs++;
}
