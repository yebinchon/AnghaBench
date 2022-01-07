
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;
typedef int git_reference ;
typedef int git_rebase ;
typedef int git_buf ;
typedef int git_annotated_commit ;
typedef int FILE ;


 int GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,int ) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_repository_workdir (int ) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_update (int *,int,int *) ;
 int repo ;

void test_rebase_submodule__init_untracked(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_buf untracked_path = GIT_BUF_INIT;
 FILE *fp;
 git_submodule *submodule;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/asparagus"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_submodule_lookup(&submodule, repo, "my-submodule"));
 cl_git_pass(git_submodule_update(submodule, 1, ((void*)0)));

 git_buf_printf(&untracked_path, "%s/my-submodule/untracked", git_repository_workdir(repo));
 fp = fopen(git_buf_cstr(&untracked_path), "w");
 fprintf(fp, "An untracked file in a submodule should not block a rebase\n");
 fclose(fp);
 git_buf_dispose(&untracked_path);

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), ((void*)0)));

 git_submodule_free(submodule);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
