
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
typedef int trace_t ;
struct TYPE_8__ {size_t firstSurfaceCluster; int numSurfaceClusters; } ;
typedef TYPE_1__ surfaceInfo_t ;
struct TYPE_9__ {int normal; int xyz; } ;
typedef TYPE_2__ bspDrawVert_t ;
struct TYPE_10__ {size_t firstVert; int numVerts; } ;
typedef TYPE_3__ bspDrawSurface_t ;
struct TYPE_11__ {int normal; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int CreateTraceLightsForBounds (int ,int ,int ,int ,int *,int ,int *) ;
 int LIGHT_SURFACES ;
 int VectorClear (int ) ;
 int VectorCompare (int ,int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_3__* bspDrawSurfaces ;
 TYPE_6__* bspDrawVerts ;
 int * surfaceClusters ;
 TYPE_1__* surfaceInfos ;
 TYPE_2__* yDrawVerts ;

void CreateTraceLightsForSurface( int num, trace_t *trace ){
 int i;
 vec3_t mins, maxs, normal;
 bspDrawVert_t *dv;
 bspDrawSurface_t *ds;
 surfaceInfo_t *info;



 if ( num < 0 ) {
  return;
 }


 ds = &bspDrawSurfaces[ num ];
 info = &surfaceInfos[ num ];


 ClearBounds( mins, maxs );
 VectorCopy( bspDrawVerts[ ds->firstVert ].normal, normal );
 for ( i = 0; i < ds->numVerts; i++ )
 {
  dv = &yDrawVerts[ ds->firstVert + i ];
  AddPointToBounds( dv->xyz, mins, maxs );
  if ( !VectorCompare( dv->normal, normal ) ) {
   VectorClear( normal );
  }
 }


 CreateTraceLightsForBounds( mins, maxs, normal, info->numSurfaceClusters, &surfaceClusters[ info->firstSurfaceCluster ], LIGHT_SURFACES, trace );
}
