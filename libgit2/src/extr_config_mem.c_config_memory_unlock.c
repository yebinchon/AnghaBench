
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_backend ;


 int GIT_UNUSED (int) ;
 int config_error_readonly () ;

__attribute__((used)) static int config_memory_unlock(git_config_backend *backend, int success)
{
 GIT_UNUSED(backend);
 GIT_UNUSED(success);
 return config_error_readonly();
}
