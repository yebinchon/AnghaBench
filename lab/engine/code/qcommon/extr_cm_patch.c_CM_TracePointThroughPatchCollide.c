
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {float dist; int normal; } ;
struct TYPE_12__ {float fraction; TYPE_1__ plane; } ;
struct TYPE_13__ {TYPE_2__ trace; int end; int start; int * offsets; int isPoint; } ;
typedef TYPE_3__ traceWork_t ;
struct patchCollide_s {int numPlanes; int numFacets; TYPE_4__* planes; TYPE_5__* facets; } ;
typedef int qboolean ;
struct TYPE_14__ {size_t signbits; float* plane; } ;
typedef TYPE_4__ patchPlane_t ;
struct TYPE_15__ {size_t surfacePlane; int numBorders; int* borderPlanes; int* borderInward; } ;
typedef TYPE_5__ facet_t ;
struct TYPE_16__ {scalar_t__ integer; } ;
typedef TYPE_6__ cvar_t ;
struct TYPE_17__ {int integer; } ;


 TYPE_6__* Cvar_Get (char*,char*,int ) ;
 float DotProduct (int ,float*) ;
 int MAX_PATCH_PLANES ;
 float SURFACE_CLIP_EPSILON ;
 int VectorCopy (float*,int ) ;
 TYPE_8__* cm_playerCurveClip ;
 TYPE_5__ const* debugFacet ;
 struct patchCollide_s const* debugPatchCollide ;
 int qfalse ;
 int qtrue ;

void CM_TracePointThroughPatchCollide( traceWork_t *tw, const struct patchCollide_s *pc ) {
 qboolean frontFacing[MAX_PATCH_PLANES];
 float intersection[MAX_PATCH_PLANES];
 float intersect;
 const patchPlane_t *planes;
 const facet_t *facet;
 int i, j, k;
 float offset;
 float d1, d2;

 static cvar_t *cv;



 if ( !cm_playerCurveClip->integer || !tw->isPoint ) {
  return;
 }



 planes = pc->planes;
 for ( i = 0 ; i < pc->numPlanes ; i++, planes++ ) {
  offset = DotProduct( tw->offsets[ planes->signbits ], planes->plane );
  d1 = DotProduct( tw->start, planes->plane ) - planes->plane[3] + offset;
  d2 = DotProduct( tw->end, planes->plane ) - planes->plane[3] + offset;
  if ( d1 <= 0 ) {
   frontFacing[i] = qfalse;
  } else {
   frontFacing[i] = qtrue;
  }
  if ( d1 == d2 ) {
   intersection[i] = 99999;
  } else {
   intersection[i] = d1 / ( d1 - d2 );
   if ( intersection[i] <= 0 ) {
    intersection[i] = 99999;
   }
  }
 }



 facet = pc->facets;
 for ( i = 0 ; i < pc->numFacets ; i++, facet++ ) {
  if ( !frontFacing[facet->surfacePlane] ) {
   continue;
  }
  intersect = intersection[facet->surfacePlane];
  if ( intersect < 0 ) {
   continue;
  }
  if ( intersect > tw->trace.fraction ) {
   continue;
  }
  for ( j = 0 ; j < facet->numBorders ; j++ ) {
   k = facet->borderPlanes[j];
   if ( frontFacing[k] ^ facet->borderInward[j] ) {
    if ( intersection[k] > intersect ) {
     break;
    }
   } else {
    if ( intersection[k] < intersect ) {
     break;
    }
   }
  }
  if ( j == facet->numBorders ) {


   if (!cv) {
    cv = Cvar_Get( "r_debugSurfaceUpdate", "1", 0 );
   }
   if (cv->integer) {
    debugPatchCollide = pc;
    debugFacet = facet;
   }

   planes = &pc->planes[facet->surfacePlane];


   offset = DotProduct( tw->offsets[ planes->signbits ], planes->plane );
   d1 = DotProduct( tw->start, planes->plane ) - planes->plane[3] + offset;
   d2 = DotProduct( tw->end, planes->plane ) - planes->plane[3] + offset;
   tw->trace.fraction = ( d1 - SURFACE_CLIP_EPSILON ) / ( d1 - d2 );

   if ( tw->trace.fraction < 0 ) {
    tw->trace.fraction = 0;
   }

   VectorCopy( planes->plane, tw->trace.plane.normal );
   tw->trace.plane.dist = planes->plane[3];
  }
 }
}
