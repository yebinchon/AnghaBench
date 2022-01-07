
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_cfg_data {char const* member_0; int member_1; } ;


 int read_early_config (int ,struct tr2_cfg_data*) ;
 int tr2_cfg_cb ;
 scalar_t__ tr2_cfg_load_patterns () ;

void tr2_cfg_list_config_fl(const char *file, int line)
{
 struct tr2_cfg_data data = { file, line };

 if (tr2_cfg_load_patterns() > 0)
  read_early_config(tr2_cfg_cb, &data);
}
