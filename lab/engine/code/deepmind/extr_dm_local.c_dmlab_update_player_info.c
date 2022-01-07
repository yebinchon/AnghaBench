
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int DEEPMIND_UPDATE_PLAYER_INFO ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

qboolean dmlab_update_player_info(int clientId, char* info, int info_size) {
  return trap_DeepmindCallback(DEEPMIND_UPDATE_PLAYER_INFO, (intptr_t)clientId,
                               (intptr_t)info, (intptr_t)info_size, 0, 0, 0, 0,
                               0, 0, 0, 0, 0);
}
