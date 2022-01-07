
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_READ_DYNAMIC_ITEM_NAME ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void dmlab_read_dynamic_item_name(int item_index, char* item_name) {
  trap_DeepmindCallback(DEEPMIND_READ_DYNAMIC_ITEM_NAME,
                        (intptr_t)item_index,
                        (intptr_t)item_name,
                        0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}
