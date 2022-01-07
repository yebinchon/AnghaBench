
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 char* GIT_HEAD_FILE ;
 int branch ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_branch_is_head (int *) ;
 int git_reference_free (int *) ;
 int git_reference_name (int ) ;
 int git_reference_symbolic_create (int **,int ,char*,char*,int,int *) ;
 int git_repository_head (int *,int ) ;
 int repo ;

void test_refs_branches_ishead__only_direct_references_are_considered(void)
{
 git_reference *linked, *super, *head;

 cl_git_pass(git_reference_symbolic_create(&linked, repo, "refs/heads/linked", "refs/heads/master", 0, ((void*)0)));
 cl_git_pass(git_reference_symbolic_create(&super, repo, "refs/heads/super", "refs/heads/linked", 0, ((void*)0)));
 cl_git_pass(git_reference_symbolic_create(&head, repo, GIT_HEAD_FILE, "refs/heads/super", 1, ((void*)0)));

 cl_assert_equal_i(0, git_branch_is_head(linked));
 cl_assert_equal_i(0, git_branch_is_head(super));

 cl_git_pass(git_repository_head(&branch, repo));
 cl_assert_equal_s("refs/heads/master", git_reference_name(branch));

 git_reference_free(linked);
 git_reference_free(super);
 git_reference_free(head);
}
