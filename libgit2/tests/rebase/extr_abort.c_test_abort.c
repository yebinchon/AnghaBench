
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_rebase ;
typedef int git_annotated_commit ;


 int cl_git_pass (int ) ;
 int ensure_aborted (int *,int *) ;
 int git_rebase_abort (int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_open (int **,int ,int *) ;
 int repo ;

__attribute__((used)) static void test_abort(
 git_annotated_commit *branch, git_annotated_commit *onto)
{
 git_rebase *rebase;

 cl_git_pass(git_rebase_open(&rebase, repo, ((void*)0)));
 cl_git_pass(git_rebase_abort(rebase));

 ensure_aborted(branch, onto);

 git_rebase_free(rebase);
}
