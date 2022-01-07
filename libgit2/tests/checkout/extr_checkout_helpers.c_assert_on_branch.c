
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_HEAD_FILE ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int cl_assert_ (int,char const*) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char*,char const*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;
 int git_reference_symbolic_target (int *) ;
 scalar_t__ git_reference_type (int *) ;

void assert_on_branch(git_repository *repo, const char *branch)
{
 git_reference *head;
 git_buf bname = GIT_BUF_INIT;

 cl_git_pass(git_reference_lookup(&head, repo, GIT_HEAD_FILE));
 cl_assert_(git_reference_type(head) == GIT_REFERENCE_SYMBOLIC, branch);

 cl_git_pass(git_buf_joinpath(&bname, "refs/heads", branch));
 cl_assert_equal_s(bname.ptr, git_reference_symbolic_target(head));

 git_reference_free(head);
 git_buf_dispose(&bname);
}
