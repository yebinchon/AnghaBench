
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_9__ {int normal; } ;
struct TYPE_11__ {double fraction; float* endpos; TYPE_1__ plane; scalar_t__ allsolid; } ;
typedef TYPE_3__ trace_t ;
typedef int qboolean ;
struct TYPE_12__ {scalar_t__ debugLevel; TYPE_2__* ps; int tracemask; int maxs; int mins; int (* trace ) (TYPE_3__*,float*,int ,int ,float*,int ,int ) ;} ;
struct TYPE_10__ {float* origin; float* velocity; int clientNum; } ;


 int Com_Printf (char*,int ) ;
 double DotProduct (int ,float*) ;
 int EV_STEP_12 ;
 int EV_STEP_16 ;
 int EV_STEP_4 ;
 int EV_STEP_8 ;
 int OVERCLIP ;
 int PM_AddEvent (int ) ;
 int PM_ClipVelocity (float*,int ,float*,int ) ;
 scalar_t__ PM_SlideMove (int ) ;
 scalar_t__ STEPSIZE ;
 int VectorCopy (float*,float*) ;
 int VectorSet (float*,int ,int ,int) ;
 int c_pmove ;
 float* down_o ;
 float* down_v ;
 TYPE_8__* pm ;
 int stub1 (TYPE_3__*,float*,int ,int ,float*,int ,int ) ;
 int stub2 (TYPE_3__*,float*,int ,int ,float*,int ,int ) ;
 int stub3 (TYPE_3__*,float*,int ,int ,float*,int ,int ) ;
 int stub4 (TYPE_3__*,float*,int ,int ,float*,int ,int ) ;

void PM_StepSlideMove( qboolean gravity ) {
 vec3_t start_o, start_v;

 trace_t trace;


 vec3_t up, down;
 float stepSize;

 VectorCopy (pm->ps->origin, start_o);
 VectorCopy (pm->ps->velocity, start_v);

 if ( PM_SlideMove( gravity ) == 0 ) {
  return;
 }

 VectorCopy(start_o, down);
 down[2] -= STEPSIZE;
 pm->trace (&trace, start_o, pm->mins, pm->maxs, down, pm->ps->clientNum, pm->tracemask);
 VectorSet(up, 0, 0, 1);

 if ( pm->ps->velocity[2] > 0 && (trace.fraction == 1.0 ||
          DotProduct(trace.plane.normal, up) < 0.7)) {
  return;
 }




 VectorCopy (start_o, up);
 up[2] += STEPSIZE;


 pm->trace (&trace, start_o, pm->mins, pm->maxs, up, pm->ps->clientNum, pm->tracemask);
 if ( trace.allsolid ) {
  if ( pm->debugLevel ) {
   Com_Printf("%i:bend can't step\n", c_pmove);
  }
  return;
 }

 stepSize = trace.endpos[2] - start_o[2];

 VectorCopy (trace.endpos, pm->ps->origin);
 VectorCopy (start_v, pm->ps->velocity);

 PM_SlideMove( gravity );


 VectorCopy (pm->ps->origin, down);
 down[2] -= stepSize;
 pm->trace (&trace, pm->ps->origin, pm->mins, pm->maxs, down, pm->ps->clientNum, pm->tracemask);
 if ( !trace.allsolid ) {
  VectorCopy (trace.endpos, pm->ps->origin);
 }
 if ( trace.fraction < 1.0 ) {
  PM_ClipVelocity( pm->ps->velocity, trace.plane.normal, pm->ps->velocity, OVERCLIP );
 }
 {

  float delta;

  delta = pm->ps->origin[2] - start_o[2];
  if ( delta > 2 ) {
   if ( delta < 7 ) {
    PM_AddEvent( EV_STEP_4 );
   } else if ( delta < 11 ) {
    PM_AddEvent( EV_STEP_8 );
   } else if ( delta < 15 ) {
    PM_AddEvent( EV_STEP_12 );
   } else {
    PM_AddEvent( EV_STEP_16 );
   }
  }
  if ( pm->debugLevel ) {
   Com_Printf("%i:stepped\n", c_pmove);
  }
 }
}
