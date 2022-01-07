
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playerState_t ;


 int DEEPMIND_SET_PLAYER_STATE ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_player_state(const playerState_t* ps, const float eyePos[3],
                        int team_score, int other_team_score) {
  trap_DeepmindCallback(DEEPMIND_SET_PLAYER_STATE, (intptr_t)ps,
                        (intptr_t)eyePos, (intptr_t) team_score,
                        (intptr_t)other_team_score, 0, 0, 0, 0, 0, 0, 0, 0);
}
