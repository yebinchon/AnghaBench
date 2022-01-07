
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_7__ {int version; } ;
typedef TYPE_2__ git_config_backend ;
typedef int git_config ;


 TYPE_2__ GIT_CONFIG_BACKEND_INIT ;
 int GIT_ERROR_INVALID ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_config_add_backend (int *,TYPE_2__*,int ,int *,int) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;

void test_config_backend__checks_version(void)
{
 git_config *cfg;
 git_config_backend backend = GIT_CONFIG_BACKEND_INIT;
 const git_error *err;

 backend.version = 1024;

 cl_git_pass(git_config_new(&cfg));
 cl_git_fail(git_config_add_backend(cfg, &backend, 0, ((void*)0), 0));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);

 git_error_clear();
 backend.version = 1024;
 cl_git_fail(git_config_add_backend(cfg, &backend, 0, ((void*)0), 0));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);

 git_config_free(cfg);
}
