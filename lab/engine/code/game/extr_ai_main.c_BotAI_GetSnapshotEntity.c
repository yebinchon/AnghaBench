
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entityState_t ;


 int BotAI_GetEntityState (int,int *) ;
 int memset (int *,int ,int) ;
 int trap_BotGetSnapshotEntity (int,int) ;

int BotAI_GetSnapshotEntity( int clientNum, int sequence, entityState_t *state ) {
 int entNum;

 entNum = trap_BotGetSnapshotEntity( clientNum, sequence );
 if ( entNum == -1 ) {
  memset(state, 0, sizeof(entityState_t));
  return -1;
 }

 BotAI_GetEntityState( entNum, state );

 return sequence + 1;
}
