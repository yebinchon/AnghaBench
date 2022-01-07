
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reflog ;
struct TYPE_2__ {int repo; } ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;

void test_worktree_reflog__read_parent_HEAD(void)
{
 git_reflog *reflog;

 cl_git_pass(git_reflog_read(&reflog, fixture.repo, "HEAD"));

 cl_assert_equal_i(0, git_reflog_entrycount(reflog));

 git_reflog_free(reflog);
}
