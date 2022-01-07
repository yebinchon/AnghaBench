
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_6__ {float radius; float halfheight; int offset; } ;
struct TYPE_7__ {scalar_t__** bounds; scalar_t__* start; scalar_t__* end; TYPE_1__ sphere; } ;
typedef TYPE_2__ traceWork_t ;
typedef int clipHandle_t ;


 int CM_ModelBounds (int ,double*,double*) ;
 int CM_TraceThroughSphere (TYPE_2__*,double*,float,double*,double*) ;
 int CM_TraceThroughVerticalCylinder (TYPE_2__*,double*,float,float,scalar_t__*,scalar_t__*) ;
 scalar_t__ RADIUS_EPSILON ;
 int VectorAdd (scalar_t__*,int ,double*) ;
 int VectorCopy (double*,double*) ;
 int VectorSubtract (scalar_t__*,int ,double*) ;

void CM_TraceCapsuleThroughCapsule( traceWork_t *tw, clipHandle_t model ) {
 int i;
 vec3_t mins, maxs;
 vec3_t top, bottom, starttop, startbottom, endtop, endbottom;
 vec3_t offset, symetricSize[2];
 float radius, halfwidth, halfheight, offs, h;

 CM_ModelBounds(model, mins, maxs);

 if ( tw->bounds[0][0] > maxs[0] + RADIUS_EPSILON
  || tw->bounds[0][1] > maxs[1] + RADIUS_EPSILON
  || tw->bounds[0][2] > maxs[2] + RADIUS_EPSILON
  || tw->bounds[1][0] < mins[0] - RADIUS_EPSILON
  || tw->bounds[1][1] < mins[1] - RADIUS_EPSILON
  || tw->bounds[1][2] < mins[2] - RADIUS_EPSILON
  ) {
  return;
 }

 VectorAdd(tw->start, tw->sphere.offset, starttop);
 VectorSubtract(tw->start, tw->sphere.offset, startbottom);
 VectorAdd(tw->end, tw->sphere.offset, endtop);
 VectorSubtract(tw->end, tw->sphere.offset, endbottom);


 for ( i = 0 ; i < 3 ; i++ ) {
  offset[i] = ( mins[i] + maxs[i] ) * 0.5;
  symetricSize[0][i] = mins[i] - offset[i];
  symetricSize[1][i] = maxs[i] - offset[i];
 }
 halfwidth = symetricSize[ 1 ][ 0 ];
 halfheight = symetricSize[ 1 ][ 2 ];
 radius = ( halfwidth > halfheight ) ? halfheight : halfwidth;
 offs = halfheight - radius;
 VectorCopy(offset, top);
 top[2] += offs;
 VectorCopy(offset, bottom);
 bottom[2] -= offs;

 radius += tw->sphere.radius;

 if ( tw->start[0] != tw->end[0] || tw->start[1] != tw->end[1] ) {

  h = halfheight + tw->sphere.halfheight - radius;

  if ( h > 0 ) {

   CM_TraceThroughVerticalCylinder(tw, offset, radius, h, tw->start, tw->end);
  }
 }

 CM_TraceThroughSphere(tw, top, radius, startbottom, endbottom);
 CM_TraceThroughSphere(tw, bottom, radius, starttop, endtop);
}
