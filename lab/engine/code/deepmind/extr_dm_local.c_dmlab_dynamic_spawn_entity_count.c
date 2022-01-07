
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_DYNAMIC_SPAWN_ENTITY_COUNT ;
 int trap_DeepmindCallback (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_dynamic_spawn_entity_count(void) {
  return trap_DeepmindCallback(DEEPMIND_DYNAMIC_SPAWN_ENTITY_COUNT, 0, 0, 0, 0,
                               0, 0, 0, 0, 0, 0, 0, 0);
}
