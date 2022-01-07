
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int parentSurfaceNum; int lightmapAxis; int longestCurve; int sampleSize; int recvShadows; int castShadows; int entityNum; int si; TYPE_3__* mds; } ;
typedef TYPE_2__ surfaceExtra_t ;
struct TYPE_8__ {int lightmapAxis; int longestCurve; int sampleSize; int recvShadows; int castShadows; int entityNum; TYPE_1__* parent; int shaderInfo; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_6__ {int outputNum; } ;


 TYPE_2__* AllocSurfaceExtra () ;
 int VectorCopy (int ,int ) ;

void SetSurfaceExtra( mapDrawSurface_t *ds, int num ){
 surfaceExtra_t *se;



 if ( ds == ((void*)0) || num < 0 ) {
  return;
 }


 se = AllocSurfaceExtra();


 se->mds = ds;
 se->si = ds->shaderInfo;
 se->parentSurfaceNum = ds->parent != ((void*)0) ? ds->parent->outputNum : -1;
 se->entityNum = ds->entityNum;
 se->castShadows = ds->castShadows;
 se->recvShadows = ds->recvShadows;
 se->sampleSize = ds->sampleSize;
 se->longestCurve = ds->longestCurve;
 VectorCopy( ds->lightmapAxis, se->lightmapAxis );



}
