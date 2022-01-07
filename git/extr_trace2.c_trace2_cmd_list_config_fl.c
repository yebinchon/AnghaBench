
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tr2_cfg_list_config_fl (char const*,int) ;
 int trace2_enabled ;

void trace2_cmd_list_config_fl(const char *file, int line)
{
 if (!trace2_enabled)
  return;

 tr2_cfg_list_config_fl(file, line);
}
