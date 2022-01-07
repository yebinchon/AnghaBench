
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_MAKE_EXTRA_ENTITIES ;
 int trap_DeepmindCallback (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_make_extra_entities(void) {
  return trap_DeepmindCallback(DEEPMIND_MAKE_EXTRA_ENTITIES,
                               0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
