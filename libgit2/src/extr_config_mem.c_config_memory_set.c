
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const git_config_backend ;


 int GIT_UNUSED (char const*) ;
 int config_error_readonly () ;

__attribute__((used)) static int config_memory_set(git_config_backend *backend, const char *name, const char *value)
{
 GIT_UNUSED(backend);
 GIT_UNUSED(name);
 GIT_UNUSED(value);
 return config_error_readonly();
}
