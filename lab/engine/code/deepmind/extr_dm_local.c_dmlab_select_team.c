
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_TEAM_SELECT ;
 scalar_t__ trap_DeepmindCallback (int ,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

char dmlab_select_team(int player_id, const char* player_name) {
  return (char)trap_DeepmindCallback(DEEPMIND_TEAM_SELECT, (intptr_t)player_id,
                                     (intptr_t)player_name, 0, 0, 0, 0, 0, 0, 0,
                                     0, 0, 0);
}
