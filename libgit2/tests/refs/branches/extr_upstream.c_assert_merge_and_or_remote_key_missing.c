
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_ENOTFOUND ;
 int GIT_OBJECT_COMMIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_create (int **,int *,char const*,int *,int ) ;
 int git_branch_upstream (int *,int *) ;
 int git_object_type (int *) ;
 int git_reference_free (int *) ;
 int upstream ;

__attribute__((used)) static void assert_merge_and_or_remote_key_missing(git_repository *repository, const git_commit *target, const char *entry_name)
{
 git_reference *branch;

 cl_assert_equal_i(GIT_OBJECT_COMMIT, git_object_type((git_object*)target));
 cl_git_pass(git_branch_create(&branch, repository, entry_name, (git_commit*)target, 0));

 cl_assert_equal_i(GIT_ENOTFOUND, git_branch_upstream(&upstream, branch));

 git_reference_free(branch);
}
