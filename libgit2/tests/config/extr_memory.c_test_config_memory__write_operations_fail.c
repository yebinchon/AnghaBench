
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backend ;
 int cl_git_fail (int ) ;
 int git_config_backend_delete (int ,char*) ;
 int git_config_backend_lock (int ) ;
 int git_config_backend_set_string (int ,char*,char*) ;
 int git_config_backend_unlock (int ,int ) ;
 int setup_backend (char*) ;

void test_config_memory__write_operations_fail(void)
{
 setup_backend("");
 cl_git_fail(git_config_backend_set_string(backend, "general.foo", "var"));
 cl_git_fail(git_config_backend_delete(backend, "general.foo"));
 cl_git_fail(git_config_backend_lock(backend));
 cl_git_fail(git_config_backend_unlock(backend, 0));
}
