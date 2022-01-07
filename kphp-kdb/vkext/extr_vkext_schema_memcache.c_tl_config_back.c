
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONFIG_LIST_SIZE ;
 int * config_list ;
 size_t config_list_pos ;
 int cur_config ;
 int tl_config_delete (int ) ;

void tl_config_back (void) {
  tl_config_delete (cur_config);
  config_list_pos --;
  if (config_list_pos < 0) {
    config_list_pos += CONFIG_LIST_SIZE;
  }
  cur_config = config_list[config_list_pos];
}
