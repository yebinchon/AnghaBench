
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_command_v_opt_cd_env (char const**,int,int *,int *) ;

int run_command_v_opt(const char **argv, int opt)
{
 return run_command_v_opt_cd_env(argv, opt, ((void*)0), ((void*)0));
}
