
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_ENTITIES_ADD ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ) ;

void dmlab_entities_add(int entity_id, int user_id, int type, int flags,
                           float position[3], const char* classname) {
  trap_DeepmindCallback(DEEPMIND_ENTITIES_ADD, (intptr_t)entity_id,
                        (intptr_t)user_id, (intptr_t)type, (intptr_t)flags,
                        (intptr_t)position, (intptr_t)classname, 0, 0, 0, 0, 0,
                        0);
}
