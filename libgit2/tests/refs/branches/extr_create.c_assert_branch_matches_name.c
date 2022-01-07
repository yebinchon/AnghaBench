
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_BRANCH_LOCAL ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_lookup (int **,int ,char const*,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int git_buf_sets (TYPE_1__*,char*) ;
 int git_commit_id (int ) ;
 int git_oid_cmp (int ,int ) ;
 int git_reference_free (int *) ;
 int git_reference_name (int *) ;
 int git_reference_target (int *) ;
 int repo ;
 int target ;

__attribute__((used)) static void assert_branch_matches_name(
 const char *expected, const char *lookup_as)
{
 git_reference *ref;
 git_buf b = GIT_BUF_INIT;

 cl_git_pass(git_branch_lookup(&ref, repo, lookup_as, GIT_BRANCH_LOCAL));

 cl_git_pass(git_buf_sets(&b, "refs/heads/"));
 cl_git_pass(git_buf_puts(&b, expected));
 cl_assert_equal_s(b.ptr, git_reference_name(ref));

 cl_git_pass(
  git_oid_cmp(git_reference_target(ref), git_commit_id(target)));

 git_reference_free(ref);
 git_buf_dispose(&b);
}
