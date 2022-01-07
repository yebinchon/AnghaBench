
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_NEW_CLIENT_INFO ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_new_client_info(int player_idx, const char* player_name,
                           const char* player_model) {
  trap_DeepmindCallback(DEEPMIND_NEW_CLIENT_INFO, (intptr_t)player_idx,
                        (intptr_t)player_name, (intptr_t)player_model, 0, 0, 0,
                        0, 0, 0, 0, 0, 0);
}
