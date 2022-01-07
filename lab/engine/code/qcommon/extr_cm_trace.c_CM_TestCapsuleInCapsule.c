
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_6__ {scalar_t__ fraction; void* allsolid; void* startsolid; } ;
struct TYPE_5__ {double* offset; float radius; } ;
struct TYPE_7__ {double* start; TYPE_2__ trace; TYPE_1__ sphere; } ;
typedef TYPE_3__ traceWork_t ;
typedef int clipHandle_t ;


 int CM_ModelBounds (int ,double*,double*) ;
 float Square (float) ;
 int VectorAdd (double*,double*,double*) ;
 int VectorCopy (double*,double*) ;
 float VectorLengthSquared (double*) ;
 int VectorSubtract (double*,double*,double*) ;
 void* qtrue ;

void CM_TestCapsuleInCapsule( traceWork_t *tw, clipHandle_t model ) {
 int i;
 vec3_t mins, maxs;
 vec3_t top, bottom;
 vec3_t p1, p2, tmp;
 vec3_t offset, symetricSize[2];
 float radius, halfwidth, halfheight, offs, r;

 CM_ModelBounds(model, mins, maxs);

 VectorAdd(tw->start, tw->sphere.offset, top);
 VectorSubtract(tw->start, tw->sphere.offset, bottom);
 for ( i = 0 ; i < 3 ; i++ ) {
  offset[i] = ( mins[i] + maxs[i] ) * 0.5;
  symetricSize[0][i] = mins[i] - offset[i];
  symetricSize[1][i] = maxs[i] - offset[i];
 }
 halfwidth = symetricSize[ 1 ][ 0 ];
 halfheight = symetricSize[ 1 ][ 2 ];
 radius = ( halfwidth > halfheight ) ? halfheight : halfwidth;
 offs = halfheight - radius;

 r = Square(tw->sphere.radius + radius);

 VectorCopy(offset, p1);
 p1[2] += offs;
 VectorSubtract(p1, top, tmp);
 if ( VectorLengthSquared(tmp) < r ) {
  tw->trace.startsolid = tw->trace.allsolid = qtrue;
  tw->trace.fraction = 0;
 }
 VectorSubtract(p1, bottom, tmp);
 if ( VectorLengthSquared(tmp) < r ) {
  tw->trace.startsolid = tw->trace.allsolid = qtrue;
  tw->trace.fraction = 0;
 }
 VectorCopy(offset, p2);
 p2[2] -= offs;
 VectorSubtract(p2, top, tmp);
 if ( VectorLengthSquared(tmp) < r ) {
  tw->trace.startsolid = tw->trace.allsolid = qtrue;
  tw->trace.fraction = 0;
 }
 VectorSubtract(p2, bottom, tmp);
 if ( VectorLengthSquared(tmp) < r ) {
  tw->trace.startsolid = tw->trace.allsolid = qtrue;
  tw->trace.fraction = 0;
 }

 if ( (top[2] >= p1[2] && top[2] <= p2[2]) ||
  (bottom[2] >= p1[2] && bottom[2] <= p2[2]) ) {

  top[2] = p1[2] = 0;

  VectorSubtract(top, p1, tmp);
  if ( VectorLengthSquared(tmp) < r ) {
   tw->trace.startsolid = tw->trace.allsolid = qtrue;
   tw->trace.fraction = 0;
  }
 }
}
