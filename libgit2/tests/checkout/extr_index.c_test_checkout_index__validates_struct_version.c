
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_7__ {int version; } ;
typedef TYPE_2__ git_checkout_options ;


 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_ERROR_INVALID ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_2__*) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;

void test_checkout_index__validates_struct_version(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 const git_error *err;

 opts.version = 1024;
 cl_git_fail(git_checkout_index(g_repo, ((void*)0), &opts));

 err = git_error_last();
 cl_assert_equal_i(err->klass, GIT_ERROR_INVALID);

 opts.version = 0;
 git_error_clear();
 cl_git_fail(git_checkout_index(g_repo, ((void*)0), &opts));

 err = git_error_last();
 cl_assert_equal_i(err->klass, GIT_ERROR_INVALID);
}
