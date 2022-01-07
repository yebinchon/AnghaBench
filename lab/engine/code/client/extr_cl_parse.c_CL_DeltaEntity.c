
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int msg_t ;
struct TYPE_8__ {int number; } ;
typedef TYPE_1__ entityState_t ;
struct TYPE_9__ {int numEntities; } ;
typedef TYPE_2__ clSnapshot_t ;
struct TYPE_10__ {int parseEntitiesNum; TYPE_1__* parseEntities; } ;


 int MAX_GENTITIES ;
 int MAX_PARSE_ENTITIES ;
 int MSG_ReadDeltaEntity (int *,TYPE_1__*,TYPE_1__*,int) ;
 TYPE_3__ cl ;

void CL_DeltaEntity (msg_t *msg, clSnapshot_t *frame, int newnum, entityState_t *old,
      qboolean unchanged) {
 entityState_t *state;



 state = &cl.parseEntities[cl.parseEntitiesNum & (MAX_PARSE_ENTITIES-1)];

 if ( unchanged ) {
  *state = *old;
 } else {
  MSG_ReadDeltaEntity( msg, old, state, newnum );
 }

 if ( state->number == (MAX_GENTITIES-1) ) {
  return;
 }
 cl.parseEntitiesNum++;
 frame->numEntities++;
}
