
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int * vec3_t ;
typedef int qboolean ;
struct TYPE_11__ {int * currentOrigin; } ;
struct TYPE_9__ {int * trBase; } ;
struct TYPE_10__ {TYPE_1__ pos; } ;
struct TYPE_12__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef TYPE_4__ gentity_t ;


 int AngleVectors (int *,int *,int *,int *) ;
 int DotProduct (int *,int *) ;
 int G_CheckProxMinePosition (TYPE_4__*) ;
 int VectorAdd (int *,int *,int *) ;
 int VectorCopy (int *,int *) ;
 int VectorSubtract (int *,int *,int *) ;
 int trap_LinkEntity (TYPE_4__*) ;
 int * vec3_origin ;

qboolean G_TryPushingProxMine( gentity_t *check, gentity_t *pusher, vec3_t move, vec3_t amove ) {
 vec3_t forward, right, up;
 vec3_t org, org2, move2;
 int ret;


 VectorSubtract (vec3_origin, amove, org);
 AngleVectors (org, forward, right, up);


 VectorAdd (check->s.pos.trBase, move, check->s.pos.trBase);


 VectorSubtract (check->s.pos.trBase, pusher->r.currentOrigin, org);
 org2[0] = DotProduct (org, forward);
 org2[1] = -DotProduct (org, right);
 org2[2] = DotProduct (org, up);
 VectorSubtract (org2, org, move2);
 VectorAdd (check->s.pos.trBase, move2, check->s.pos.trBase);

 ret = G_CheckProxMinePosition( check );
 if (ret) {
  VectorCopy( check->s.pos.trBase, check->r.currentOrigin );
  trap_LinkEntity (check);
 }
 return ret;
}
