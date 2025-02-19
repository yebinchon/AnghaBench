
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_7__ {double* normal; } ;
struct TYPE_8__ {double fraction; double* endpos; TYPE_1__ plane; } ;
typedef TYPE_2__ trace_t ;
struct TYPE_9__ {int use; float radius; float halfheight; double* offset; } ;
typedef TYPE_3__ sphere_t ;
typedef scalar_t__ qboolean ;
typedef int clipHandle_t ;


 int BOX_MODEL_HANDLE ;
 int CM_Trace (TYPE_2__*,double*,double*,double*,double*,int ,double* const,int,int,TYPE_3__*) ;
 int CreateRotationMatrix (double* const,double**) ;
 int RotatePoint (double*,double**) ;
 int TransposeMatrix (double**,double**) ;
 int VectorSet (double*,int ,int ,float) ;
 int VectorSubtract (double*,double* const,double*) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 double* vec3_origin ;

void CM_TransformedBoxTrace( trace_t *results, const vec3_t start, const vec3_t end,
        vec3_t mins, vec3_t maxs,
        clipHandle_t model, int brushmask,
        const vec3_t origin, const vec3_t angles, int capsule ) {
 trace_t trace;
 vec3_t start_l, end_l;
 qboolean rotated;
 vec3_t offset;
 vec3_t symetricSize[2];
 vec3_t matrix[3], transpose[3];
 int i;
 float halfwidth;
 float halfheight;
 float t;
 sphere_t sphere;

 if ( !mins ) {
  mins = vec3_origin;
 }
 if ( !maxs ) {
  maxs = vec3_origin;
 }




 for ( i = 0 ; i < 3 ; i++ ) {
  offset[i] = ( mins[i] + maxs[i] ) * 0.5;
  symetricSize[0][i] = mins[i] - offset[i];
  symetricSize[1][i] = maxs[i] - offset[i];
  start_l[i] = start[i] + offset[i];
  end_l[i] = end[i] + offset[i];
 }


 VectorSubtract( start_l, origin, start_l );
 VectorSubtract( end_l, origin, end_l );


 if ( model != BOX_MODEL_HANDLE &&
  (angles[0] || angles[1] || angles[2]) ) {
  rotated = qtrue;
 } else {
  rotated = qfalse;
 }

 halfwidth = symetricSize[ 1 ][ 0 ];
 halfheight = symetricSize[ 1 ][ 2 ];

 sphere.use = capsule;
 sphere.radius = ( halfwidth > halfheight ) ? halfheight : halfwidth;
 sphere.halfheight = halfheight;
 t = halfheight - sphere.radius;

 if (rotated) {






  CreateRotationMatrix(angles, matrix);
  RotatePoint(start_l, matrix);
  RotatePoint(end_l, matrix);

  sphere.offset[0] = matrix[0][ 2 ] * t;
  sphere.offset[1] = -matrix[1][ 2 ] * t;
  sphere.offset[2] = matrix[2][ 2 ] * t;
 }
 else {
  VectorSet( sphere.offset, 0, 0, t );
 }


 CM_Trace( &trace, start_l, end_l, symetricSize[0], symetricSize[1], model, origin, brushmask, capsule, &sphere );


 if ( rotated && trace.fraction != 1.0 ) {

  TransposeMatrix(matrix, transpose);
  RotatePoint(trace.plane.normal, transpose);
 }



 trace.endpos[0] = start[0] + trace.fraction * (end[0] - start[0]);
 trace.endpos[1] = start[1] + trace.fraction * (end[1] - start[1]);
 trace.endpos[2] = start[2] + trace.fraction * (end[2] - start[2]);

 *results = trace;
}
