
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_command_v_opt_cd_env_tr2 (char const**,int,char const*,char const* const*,int *) ;

int run_command_v_opt_cd_env(const char **argv, int opt, const char *dir, const char *const *env)
{
 return run_command_v_opt_cd_env_tr2(argv, opt, dir, env, ((void*)0));
}
