
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reflog_entry ;
typedef int git_reflog ;
struct TYPE_2__ {int worktree; } ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;

void test_worktree_reflog__read_worktree_HEAD(void)
{
 git_reflog *reflog;
 const git_reflog_entry *entry;

 cl_git_pass(git_reflog_read(&reflog, fixture.worktree, "HEAD"));
 cl_assert_equal_i(1, git_reflog_entrycount(reflog));

 entry = git_reflog_entry_byindex(reflog, 0);
 cl_assert(entry != ((void*)0));
 cl_assert_equal_s("checkout: moving from 099fabac3a9ea935598528c27f866e34089c2eff to testrepo-worktree", git_reflog_entry_message(entry));

 git_reflog_free(reflog);
}
