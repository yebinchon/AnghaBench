
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int playerState_t ;


 int DEEPMIND_OVERRIDE_PICKUP ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

qboolean dmlab_override_pickup(int entity_id, int* respawn,
                               const playerState_t* ps) {
  return trap_DeepmindCallback(DEEPMIND_OVERRIDE_PICKUP, (intptr_t)entity_id,
                               (intptr_t)respawn, (intptr_t)ps, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
