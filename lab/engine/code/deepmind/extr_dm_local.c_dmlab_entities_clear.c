
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_ENTITIES_CLEAR ;
 int trap_DeepmindCallback (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_entities_clear(void) {
  trap_DeepmindCallback(DEEPMIND_ENTITIES_CLEAR, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                        0, 0);
}
