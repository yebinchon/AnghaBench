
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reflog_entry ;
typedef int git_reflog ;
struct TYPE_2__ {int worktree; } ;


 int REFLOG ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,int ) ;

void test_worktree_reflog__read(void)
{
 git_reflog *reflog;
 const git_reflog_entry *entry;

 cl_git_pass(git_reflog_read(&reflog, fixture.worktree, REFLOG));
 cl_assert_equal_i(git_reflog_entrycount(reflog), 1);

 entry = git_reflog_entry_byindex(reflog, 0);
 cl_assert(entry != ((void*)0));
 cl_assert_equal_s(git_reflog_entry_message(entry), "branch: Created from HEAD");

 git_reflog_free(reflog);
}
