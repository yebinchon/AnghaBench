
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int * vec3_t ;
typedef int qboolean ;
struct TYPE_19__ {int * trBase; } ;
struct TYPE_16__ {int * trBase; } ;
struct TYPE_20__ {int eFlags; scalar_t__ groundEntityNum; scalar_t__ number; TYPE_5__ apos; TYPE_2__ pos; } ;
struct TYPE_15__ {int * currentOrigin; } ;
struct TYPE_21__ {TYPE_6__ s; TYPE_4__* client; TYPE_1__ r; } ;
typedef TYPE_7__ gentity_t ;
struct TYPE_22__ {int * angles; int * origin; int deltayaw; TYPE_7__* ent; } ;
struct TYPE_17__ {int * origin; int * delta_angles; } ;
struct TYPE_18__ {TYPE_3__ ps; } ;


 scalar_t__ ANGLE2SHORT (int ) ;
 int EF_MOVER_STOP ;
 void* ENTITYNUM_NONE ;
 int G_CreateRotationMatrix (int *,int **) ;
 int G_Error (char*) ;
 int G_RotatePoint (int *,int **) ;
 TYPE_7__* G_TestEntityPosition (TYPE_7__*) ;
 int G_TransposeMatrix (int **,int **) ;
 size_t MAX_GENTITIES ;
 int VectorAdd (int *,int *,int *) ;
 int VectorCopy (int *,int *) ;
 int VectorSubtract (int *,int *,int *) ;
 size_t YAW ;
 TYPE_9__* pushed ;
 TYPE_9__* pushed_p ;
 int qfalse ;
 int qtrue ;
 int trap_LinkEntity (TYPE_7__*) ;

qboolean G_TryPushingEntity( gentity_t *check, gentity_t *pusher, vec3_t move, vec3_t amove ) {
 vec3_t matrix[3], transpose[3];
 vec3_t org, org2, move2;
 gentity_t *block;



 if ( ( pusher->s.eFlags & EF_MOVER_STOP ) &&
  check->s.groundEntityNum != pusher->s.number ) {
  return qfalse;
 }


 if (pushed_p > &pushed[MAX_GENTITIES]) {
  G_Error( "pushed_p > &pushed[MAX_GENTITIES]" );
 }
 pushed_p->ent = check;
 VectorCopy (check->s.pos.trBase, pushed_p->origin);
 VectorCopy (check->s.apos.trBase, pushed_p->angles);
 if ( check->client ) {
  pushed_p->deltayaw = check->client->ps.delta_angles[YAW];
  VectorCopy (check->client->ps.origin, pushed_p->origin);
 }
 pushed_p++;



 G_CreateRotationMatrix( amove, transpose );
 G_TransposeMatrix( transpose, matrix );
 if ( check->client ) {
  VectorSubtract (check->client->ps.origin, pusher->r.currentOrigin, org);
 }
 else {
  VectorSubtract (check->s.pos.trBase, pusher->r.currentOrigin, org);
 }
 VectorCopy( org, org2 );
 G_RotatePoint( org2, matrix );
 VectorSubtract (org2, org, move2);

 VectorAdd (check->s.pos.trBase, move, check->s.pos.trBase);
 VectorAdd (check->s.pos.trBase, move2, check->s.pos.trBase);
 if ( check->client ) {
  VectorAdd (check->client->ps.origin, move, check->client->ps.origin);
  VectorAdd (check->client->ps.origin, move2, check->client->ps.origin);

  check->client->ps.delta_angles[YAW] += ANGLE2SHORT(amove[YAW]);
 }


 if ( check->s.groundEntityNum != pusher->s.number ) {
  check->s.groundEntityNum = ENTITYNUM_NONE;
 }

 block = G_TestEntityPosition( check );
 if (!block) {

  if ( check->client ) {
   VectorCopy( check->client->ps.origin, check->r.currentOrigin );
  } else {
   VectorCopy( check->s.pos.trBase, check->r.currentOrigin );
  }
  trap_LinkEntity (check);
  return qtrue;
 }




 VectorCopy( (pushed_p-1)->origin, check->s.pos.trBase);
 if ( check->client ) {
  VectorCopy( (pushed_p-1)->origin, check->client->ps.origin);
 }
 VectorCopy( (pushed_p-1)->angles, check->s.apos.trBase );
 block = G_TestEntityPosition (check);
 if ( !block ) {
  check->s.groundEntityNum = ENTITYNUM_NONE;
  pushed_p--;
  return qtrue;
 }


 return qfalse;
}
