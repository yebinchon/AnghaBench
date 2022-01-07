
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tr2_cfg_set_fl (char const*,int,char const*,char const*) ;
 int trace2_enabled ;

void trace2_cmd_set_config_fl(const char *file, int line, const char *key,
         const char *value)
{
 if (!trace2_enabled)
  return;

 tr2_cfg_set_fl(file, line, key, value);
}
