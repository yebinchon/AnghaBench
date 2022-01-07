
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_LIST_SIZE ;
 scalar_t__* config_list ;
 scalar_t__ cur_config ;
 int tl_config_delete (scalar_t__) ;

void tl_delete_old_configs (void) {
  int i;
  for (i = 0; i < CONFIG_LIST_SIZE; i++) if (config_list[i] && config_list[i] != cur_config) {
    tl_config_delete (config_list[i]);
  }
}
