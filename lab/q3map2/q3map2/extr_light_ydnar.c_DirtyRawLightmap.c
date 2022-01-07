
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int numSurfaces; size_t* surfaces; int cluster; int normal; int origin; void* twoSided; void* testAll; int inhibitRadius; int recvShadows; void* forceSunlight; void* testOcclusion; } ;
typedef TYPE_2__ trace_t ;
struct TYPE_10__ {TYPE_1__* si; } ;
typedef TYPE_3__ surfaceInfo_t ;
struct TYPE_11__ {int numLightSurfaces; size_t firstLightSurface; int sh; int sw; int recvShadows; } ;
typedef TYPE_4__ rawLightmap_t ;
struct TYPE_8__ {scalar_t__ twoSided; } ;


 int DEFAULT_INHIBIT_RADIUS ;
 float DirtForSample (TYPE_2__*) ;
 int* SUPER_CLUSTER (int,int) ;
 float* SUPER_DIRT (int,int) ;
 float* SUPER_NORMAL (int,int) ;
 float* SUPER_ORIGIN (int,int) ;
 int VectorCopy (float*,int ) ;
 size_t* lightSurfaces ;
 int numRawLightmaps ;
 void* qfalse ;
 void* qtrue ;
 TYPE_4__* rawLightmaps ;
 TYPE_3__* surfaceInfos ;

void DirtyRawLightmap( int rawLightmapNum ){
 int i, x, y, sx, sy, *cluster;
 float *origin, *normal, *dirt, *dirt2, average, samples;
 rawLightmap_t *lm;
 surfaceInfo_t *info;
 trace_t trace;



 if ( rawLightmapNum >= numRawLightmaps ) {
  return;
 }


 lm = &rawLightmaps[ rawLightmapNum ];


 trace.testOcclusion = qtrue;
 trace.forceSunlight = qfalse;
 trace.recvShadows = lm->recvShadows;
 trace.numSurfaces = lm->numLightSurfaces;
 trace.surfaces = &lightSurfaces[ lm->firstLightSurface ];
 trace.inhibitRadius = DEFAULT_INHIBIT_RADIUS;
 trace.testAll = qfalse;


 trace.twoSided = qfalse;
 for ( i = 0; i < trace.numSurfaces; i++ )
 {

  info = &surfaceInfos[ trace.surfaces[ i ] ];


  if ( info->si->twoSided ) {
   trace.twoSided = qtrue;
   break;
  }
 }


 for ( y = 0; y < lm->sh; y++ )
 {
  for ( x = 0; x < lm->sw; x++ )
  {

   cluster = SUPER_CLUSTER( x, y );
   origin = SUPER_ORIGIN( x, y );
   normal = SUPER_NORMAL( x, y );
   dirt = SUPER_DIRT( x, y );


   *dirt = 0.0f;


   if ( *cluster < 0 ) {
    continue;
   }


   trace.cluster = *cluster;
   VectorCopy( origin, trace.origin );
   VectorCopy( normal, trace.normal );


   *dirt = DirtForSample( &trace );
  }
 }





 for ( y = 0; y < lm->sh; y++ )
 {
  for ( x = 0; x < lm->sw; x++ )
  {

   cluster = SUPER_CLUSTER( x, y );
   dirt = SUPER_DIRT( x, y );


   average = *dirt;
   samples = 1.0f;
   for ( sy = ( y - 1 ); sy <= ( y + 1 ); sy++ )
   {
    if ( sy < 0 || sy >= lm->sh ) {
     continue;
    }

    for ( sx = ( x - 1 ); sx <= ( x + 1 ); sx++ )
    {
     if ( sx < 0 || sx >= lm->sw || ( sx == x && sy == y ) ) {
      continue;
     }


     cluster = SUPER_CLUSTER( sx, sy );
     dirt2 = SUPER_DIRT( sx, sy );
     if ( *cluster < 0 || *dirt2 <= 0.0f ) {
      continue;
     }


     average += *dirt2;
     samples += 1.0f;
    }


    if ( samples <= 0.0f ) {
     break;
    }
   }


   if ( samples <= 0.0f ) {
    continue;
   }


   *dirt = average / samples;
  }
 }
}
