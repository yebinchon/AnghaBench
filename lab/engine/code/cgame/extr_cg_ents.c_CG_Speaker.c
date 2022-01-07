
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int clientNum; size_t eventParm; int frame; int number; } ;
struct TYPE_7__ {scalar_t__ miscTime; TYPE_1__ currentState; } ;
typedef TYPE_2__ centity_t ;
struct TYPE_9__ {scalar_t__ time; } ;
struct TYPE_8__ {int * gameSounds; } ;


 int CHAN_ITEM ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int crandom () ;
 int trap_S_StartSound (int *,int ,int ,int ) ;

__attribute__((used)) static void CG_Speaker( centity_t *cent ) {
 if ( ! cent->currentState.clientNum ) {
  return;
 }

 if ( cg.time < cent->miscTime ) {
  return;
 }

 trap_S_StartSound (((void*)0), cent->currentState.number, CHAN_ITEM, cgs.gameSounds[cent->currentState.eventParm] );



 cent->miscTime = cg.time + cent->currentState.frame * 100 + cent->currentState.clientNum * 100 * crandom();
}
