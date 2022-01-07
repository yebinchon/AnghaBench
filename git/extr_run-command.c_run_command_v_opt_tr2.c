
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_command_v_opt_cd_env_tr2 (char const**,int,int *,int *,char const*) ;

int run_command_v_opt_tr2(const char **argv, int opt, const char *tr2_class)
{
 return run_command_v_opt_cd_env_tr2(argv, opt, ((void*)0), ((void*)0), tr2_class);
}
