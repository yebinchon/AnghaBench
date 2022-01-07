
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int vec3_t ;
struct TYPE_13__ {scalar_t__ trTime; scalar_t__ trType; scalar_t__ trDuration; } ;
struct TYPE_15__ {TYPE_12__ pos; TYPE_12__ apos; } ;
struct TYPE_14__ {int currentAngles; int currentOrigin; } ;
struct TYPE_16__ {int (* reached ) (TYPE_3__*) ;TYPE_2__ s; struct TYPE_16__* teamchain; int (* blocked ) (TYPE_3__*,TYPE_3__*) ;TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_17__ {scalar_t__ time; scalar_t__ previousTime; } ;


 int BG_EvaluateTrajectory (TYPE_12__*,scalar_t__,int ) ;
 int G_MoverPush (TYPE_3__*,int ,int ,TYPE_3__**) ;
 scalar_t__ TR_LINEAR_STOP ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_8__ level ;
 int pushed ;
 int pushed_p ;
 int stub1 (TYPE_3__*,TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int trap_LinkEntity (TYPE_3__*) ;

void G_MoverTeam( gentity_t *ent ) {
 vec3_t move, amove;
 gentity_t *part, *obstacle;
 vec3_t origin, angles;

 obstacle = ((void*)0);




 pushed_p = pushed;
 for (part = ent ; part ; part=part->teamchain) {

  BG_EvaluateTrajectory( &part->s.pos, level.time, origin );
  BG_EvaluateTrajectory( &part->s.apos, level.time, angles );
  VectorSubtract( origin, part->r.currentOrigin, move );
  VectorSubtract( angles, part->r.currentAngles, amove );
  if ( !G_MoverPush( part, move, amove, &obstacle ) ) {
   break;
  }
 }

 if (part) {

  for ( part = ent ; part ; part = part->teamchain ) {
   part->s.pos.trTime += level.time - level.previousTime;
   part->s.apos.trTime += level.time - level.previousTime;
   BG_EvaluateTrajectory( &part->s.pos, level.time, part->r.currentOrigin );
   BG_EvaluateTrajectory( &part->s.apos, level.time, part->r.currentAngles );
   trap_LinkEntity( part );
  }


  if (ent->blocked) {
   ent->blocked( ent, obstacle );
  }
  return;
 }


 for ( part = ent ; part ; part = part->teamchain ) {

  if ( part->s.pos.trType == TR_LINEAR_STOP ) {
   if ( level.time >= part->s.pos.trTime + part->s.pos.trDuration ) {
    if ( part->reached ) {
     part->reached( part );
    }
   }
  }
 }
}
