
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int cl_git_fail (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int cl_skip () ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 scalar_t__ git_path_supports_symlinks (char*) ;

void test_checkout_index__coresymlinks_set_to_true_fails_when_unsupported(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 if (git_path_supports_symlinks("testrepo/test")) {
  cl_skip();
 }

 cl_repo_set_bool(g_repo, "core.symlinks", 1);

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;
 cl_git_fail(git_checkout_index(g_repo, ((void*)0), &opts));
}
