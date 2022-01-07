
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {float* offset; scalar_t__ radius; scalar_t__ use; } ;
struct TYPE_7__ {float* start; float** offsets; TYPE_1__ sphere; scalar_t__ isPoint; } ;
typedef TYPE_2__ traceWork_t ;
struct patchCollide_s {int numFacets; TYPE_3__* planes; TYPE_4__* facets; } ;
typedef int qboolean ;
struct TYPE_8__ {float* plane; size_t signbits; } ;
typedef TYPE_3__ patchPlane_t ;
struct TYPE_9__ {size_t surfacePlane; int numBorders; size_t* borderPlanes; scalar_t__* borderInward; } ;
typedef TYPE_4__ facet_t ;


 float DotProduct (float*,float*) ;
 int VectorAdd (float*,float*,float*) ;
 int VectorCopy (float*,float*) ;
 int VectorNegate (float*,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 scalar_t__ fabs (float) ;
 int qfalse ;
 int qtrue ;

qboolean CM_PositionTestInPatchCollide( traceWork_t *tw, const struct patchCollide_s *pc ) {
 int i, j;
 float offset, t;
 patchPlane_t *planes;
 facet_t *facet;
 float plane[4];
 vec3_t startp;

 if (tw->isPoint) {
  return qfalse;
 }

 facet = pc->facets;
 for ( i = 0 ; i < pc->numFacets ; i++, facet++ ) {
  planes = &pc->planes[ facet->surfacePlane ];
  VectorCopy(planes->plane, plane);
  plane[3] = planes->plane[3];
  if ( tw->sphere.use ) {

   plane[3] += tw->sphere.radius;


   t = DotProduct( plane, tw->sphere.offset );
   if ( t > 0 ) {
    VectorSubtract( tw->start, tw->sphere.offset, startp );
   }
   else {
    VectorAdd( tw->start, tw->sphere.offset, startp );
   }
  }
  else {
   offset = DotProduct( tw->offsets[ planes->signbits ], plane);
   plane[3] -= offset;
   VectorCopy( tw->start, startp );
  }

  if ( DotProduct( plane, startp ) - plane[3] > 0.0f ) {
   continue;
  }

  for ( j = 0; j < facet->numBorders; j++ ) {
   planes = &pc->planes[ facet->borderPlanes[j] ];
   if (facet->borderInward[j]) {
    VectorNegate(planes->plane, plane);
    plane[3] = -planes->plane[3];
   }
   else {
    VectorCopy(planes->plane, plane);
    plane[3] = planes->plane[3];
   }
   if ( tw->sphere.use ) {

    plane[3] += tw->sphere.radius;


    t = DotProduct( plane, tw->sphere.offset );
    if ( t > 0.0f ) {
     VectorSubtract( tw->start, tw->sphere.offset, startp );
    }
    else {
     VectorAdd( tw->start, tw->sphere.offset, startp );
    }
   }
   else {

    offset = DotProduct( tw->offsets[ planes->signbits ], plane);
    plane[3] += fabs(offset);
    VectorCopy( tw->start, startp );
   }

   if ( DotProduct( plane, startp ) - plane[3] > 0.0f ) {
    break;
   }
  }
  if (j < facet->numBorders) {
   continue;
  }

  return qtrue;
 }
 return qfalse;
}
