
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_CLEAR_ITEMS ;
 int trap_DeepmindCallback (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_clearitems(void) {
  trap_DeepmindCallback(DEEPMIND_CLEAR_ITEMS,
                        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
