
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_ITEM_COUNT ;
 int trap_DeepmindCallback (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int dmlab_itemcount(void) {
  return trap_DeepmindCallback(DEEPMIND_ITEM_COUNT,
                               0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
