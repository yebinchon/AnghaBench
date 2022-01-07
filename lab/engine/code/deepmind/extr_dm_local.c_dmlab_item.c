
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEEPMIND_ITEM ;
 int trap_DeepmindCallback (int ,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,int ) ;

int dmlab_item(int index, char* item_name, int max_item_name,
               char* classname, int max_classname,
               char* model_name, int max_model_name,
               int* quantity, int* type, int* tag, int* move_type) {
  return trap_DeepmindCallback(
      DEEPMIND_ITEM, (intptr_t)index, (intptr_t)item_name,
      (intptr_t)max_item_name,
      (intptr_t)classname, (intptr_t)max_classname,
      (intptr_t)model_name, (intptr_t)max_model_name,
      (intptr_t)quantity, (intptr_t)type, (intptr_t)tag, (intptr_t)move_type,
      0);
}
