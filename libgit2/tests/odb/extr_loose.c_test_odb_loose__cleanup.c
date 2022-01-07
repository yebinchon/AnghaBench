
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OPT_ENABLE_FSYNC_GITDIR ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,int ) ;

void test_odb_loose__cleanup(void)
{
 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_FSYNC_GITDIR, 0));
 cl_fixture_cleanup("test-objects");
}
