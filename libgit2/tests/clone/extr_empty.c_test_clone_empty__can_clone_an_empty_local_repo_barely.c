
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_9__ {int bare; } ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 TYPE_2__ g_options ;
 int g_repo_cloned ;
 int git_branch_remote_name (TYPE_1__*,int ,char const*) ;
 int git_branch_upstream_name (TYPE_1__*,int ,char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_clone (int *,char*,char*,TYPE_2__*) ;
 int git_reference_lookup (int **,int ,char const*) ;

void test_clone_empty__can_clone_an_empty_local_repo_barely(void)
{
 char *local_name = "refs/heads/master";
 const char *expected_tracked_branch_name = "refs/remotes/origin/master";
 const char *expected_remote_name = "origin";
 git_buf buf = GIT_BUF_INIT;
 git_reference *ref;

 cl_set_cleanup(&cleanup_repository, "./empty");

 g_options.bare = 1;
 cl_git_pass(git_clone(&g_repo_cloned, "./empty_bare.git", "./empty", &g_options));


 cl_assert_equal_i(GIT_ENOTFOUND, git_reference_lookup(&ref, g_repo_cloned, local_name));


 cl_git_pass(git_branch_upstream_name(&buf, g_repo_cloned, local_name));

 cl_assert_equal_s(expected_tracked_branch_name, buf.ptr);
 git_buf_dispose(&buf);


 cl_git_pass(git_branch_remote_name(&buf, g_repo_cloned, expected_tracked_branch_name));

 cl_assert_equal_s(expected_remote_name, buf.ptr);
 git_buf_dispose(&buf);


 cl_assert_equal_i(GIT_ENOTFOUND, git_reference_lookup(&ref, g_repo_cloned,
  expected_tracked_branch_name));
}
