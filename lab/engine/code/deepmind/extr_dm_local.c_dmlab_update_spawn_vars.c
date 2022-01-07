
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_UPDATE_SPAWN_VARS ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_update_spawn_vars(char* spawn_var_chars,
                            int* num_spawn_var_chars,
                            int spawn_var_offsets[][2],
                            int* num_spawn_vars) {
  return trap_DeepmindCallback(DEEPMIND_UPDATE_SPAWN_VARS,
                               (intptr_t)spawn_var_chars,
                               (intptr_t)num_spawn_var_chars,
                               (intptr_t)spawn_var_offsets,
                               (intptr_t)num_spawn_vars, 0, 0, 0, 0, 0, 0, 0,
                               0);
}
