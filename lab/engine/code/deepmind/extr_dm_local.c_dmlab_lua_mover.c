
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec3_t ;


 int DEEPMIND_LUA_MOVER ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ) ;

void dmlab_lua_mover(int entity_id, const vec3_t entityPosition,
                     const vec3_t playerPosition, const vec3_t playerVelocity,
                     vec3_t playerPositionDelta, vec3_t playerVelocityDelta) {
  trap_DeepmindCallback(DEEPMIND_LUA_MOVER, (intptr_t)entity_id,
                        (intptr_t)entityPosition,
                        (intptr_t)playerPosition, (intptr_t)playerVelocity,
                        (intptr_t)playerPositionDelta,
                        (intptr_t)playerVelocityDelta, 0, 0, 0, 0, 0, 0);
}
