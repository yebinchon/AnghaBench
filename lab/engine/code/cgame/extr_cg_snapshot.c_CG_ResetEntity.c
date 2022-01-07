
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ eType; int angles; int origin; } ;
struct TYPE_9__ {scalar_t__ snapShotTime; TYPE_2__ currentState; int lerpAngles; int lerpOrigin; int trailTime; scalar_t__ previousEvent; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_10__ {scalar_t__ time; TYPE_1__* snap; } ;
struct TYPE_7__ {int serverTime; } ;


 int CG_ResetPlayerEntity (TYPE_3__*) ;
 scalar_t__ ET_PLAYER ;
 scalar_t__ EVENT_VALID_MSEC ;
 int VectorCopy (int ,int ) ;
 TYPE_4__ cg ;

__attribute__((used)) static void CG_ResetEntity( centity_t *cent ) {


 if ( cent->snapShotTime < cg.time - EVENT_VALID_MSEC ) {
  cent->previousEvent = 0;
 }

 cent->trailTime = cg.snap->serverTime;

 VectorCopy (cent->currentState.origin, cent->lerpOrigin);
 VectorCopy (cent->currentState.angles, cent->lerpAngles);
 if ( cent->currentState.eType == ET_PLAYER ) {
  CG_ResetPlayerEntity( cent );
 }
}
