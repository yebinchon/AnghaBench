
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playerState_t ;


 int DEEPMIND_UPDATE_INVENTORY ;
 int trap_DeepmindCallback (int ,intptr_t,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_update_inventory(playerState_t* player_state, int is_bot) {
  trap_DeepmindCallback(DEEPMIND_UPDATE_INVENTORY, (intptr_t)player_state,
                        is_bot, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
