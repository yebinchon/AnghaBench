
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_index ;
typedef int git_annotated_commit ;


 int check_status (int ,int ,int,int,int ,int ,int ,int ,int) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_index_add_all (int *,int *,int ,int *,int *) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_merge (int ,int const**,int,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_repository_index (int **,int ) ;

void test_index_addall__adds_conflicts(void)
{
 git_index *index;
 git_reference *ref;
 git_annotated_commit *annotated;

 g_repo = cl_git_sandbox_init("merge-resolve");
 cl_git_pass(git_repository_index(&index, g_repo));

 check_status(g_repo, 0, 0, 0, 0, 0, 0, 0, 0);

 cl_git_pass(git_reference_lookup(&ref, g_repo, "refs/heads/branch"));
 cl_git_pass(git_annotated_commit_from_ref(&annotated, g_repo, ref));

 cl_git_pass(git_merge(g_repo, (const git_annotated_commit**)&annotated, 1, ((void*)0), ((void*)0)));
 check_status(g_repo, 0, 1, 2, 0, 0, 0, 0, 1);

 cl_git_pass(git_index_add_all(index, ((void*)0), 0, ((void*)0), ((void*)0)));
 cl_git_pass(git_index_write(index));
 check_status(g_repo, 0, 1, 3, 0, 0, 0, 0, 0);

 git_annotated_commit_free(annotated);
 git_reference_free(ref);
 git_index_free(index);
}
