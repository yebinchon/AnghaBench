
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int repository; } ;
typedef TYPE_1__ git_remote_create_options ;
typedef int git_remote ;


 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ;
 int GIT_REMOTE_CREATE_SKIP_INSTEADOF ;
 int _repo ;
 int cl_assert_equal_p (int ,int *) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_remote_create_with_opts (int **,char*,TYPE_1__*) ;
 int git_remote_free (int *) ;
 int git_remote_pushurl (int *) ;
 int git_remote_url (int *) ;

void test_remote_create__with_opts_insteadof_disabled(void)
{
 git_remote *remote;
 git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

 opts.repository = _repo;
 opts.flags = GIT_REMOTE_CREATE_SKIP_INSTEADOF;

 cl_git_pass(git_remote_create_with_opts(&remote, "http://example.com/libgit2/libgit2", &opts));

 cl_assert_equal_s(git_remote_url(remote), "http://example.com/libgit2/libgit2");
 cl_assert_equal_p(git_remote_pushurl(remote), ((void*)0));

 git_remote_free(remote);
}
