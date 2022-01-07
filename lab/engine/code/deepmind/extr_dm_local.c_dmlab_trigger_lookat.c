
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec3_t ;
typedef scalar_t__ qboolean ;
typedef int playerState_t ;


 int DEEPMIND_OVERRIDE_LOOKAT ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_trigger_lookat(int entity_id, qboolean looked_at, vec3_t position,
                          const playerState_t* ps) {
  trap_DeepmindCallback(DEEPMIND_OVERRIDE_LOOKAT,
                        (intptr_t)entity_id, (intptr_t)looked_at,
                        (intptr_t)position,
                        (intptr_t)ps, 0, 0, 0, 0, 0, 0, 0, 0);
}
