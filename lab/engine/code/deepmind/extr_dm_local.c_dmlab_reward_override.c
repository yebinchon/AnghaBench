
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec3_t ;


 int DEEPMIND_REWARD_OVERRIDE ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ) ;

int dmlab_reward_override(const char* reason_opt, int player_id, int team,
                          const int* other_player_id_opt,
                          const vec3_t origin_opt, int score) {
  return trap_DeepmindCallback(
      DEEPMIND_REWARD_OVERRIDE, (intptr_t)reason_opt, (intptr_t)player_id,
      (intptr_t)team, (intptr_t)other_player_id_opt, (intptr_t)origin_opt,
      (intptr_t)score, 0, 0, 0, 0, 0, 0);
}
