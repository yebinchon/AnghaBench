
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const git_config_backend ;


 int GIT_UNUSED (char const*) ;
 int config_error_readonly () ;

__attribute__((used)) static int config_snapshot_delete(git_config_backend *cfg, const char *name)
{
 GIT_UNUSED(cfg);
 GIT_UNUSED(name);

 return config_error_readonly();
}
