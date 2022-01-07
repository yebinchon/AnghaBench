
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_PLAYER_SCORE ;
 int trap_DeepmindCallback (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_player_score(void) {
  return trap_DeepmindCallback(DEEPMIND_PLAYER_SCORE, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                               0, 0, 0);
}
