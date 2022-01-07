
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int playerState_t ;


 int DEEPMIND_OVERRIDE_TRIGGER ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

qboolean dmlab_override_trigger(int entity_id, const char* target_name,
                                const playerState_t* ps) {
  return trap_DeepmindCallback(DEEPMIND_OVERRIDE_TRIGGER,
                               (intptr_t)entity_id, (intptr_t)target_name,
                               (intptr_t)ps, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
