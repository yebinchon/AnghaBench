
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_upstream_remote (TYPE_1__*,int ,char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int repo ;

void test_refs_branches_upstream__upstream_remote(void)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_branch_upstream_remote(&buf, repo, "refs/heads/master"));
 cl_assert_equal_s("test", buf.ptr);
 git_buf_dispose(&buf);
}
