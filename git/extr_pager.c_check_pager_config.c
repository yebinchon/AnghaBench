
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pager_command_config_data {char const* cmd; int want; int * value; } ;


 int pager_command_config ;
 int * pager_program ;
 int read_early_config (int ,struct pager_command_config_data*) ;

int check_pager_config(const char *cmd)
{
 struct pager_command_config_data data;

 data.cmd = cmd;
 data.want = -1;
 data.value = ((void*)0);

 read_early_config(pager_command_config, &data);

 if (data.value)
  pager_program = data.value;
 return data.want;
}
