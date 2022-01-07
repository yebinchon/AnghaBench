
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_annotated_commit ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;

void test_merge_annotated_commit__lookup_annotated_tag(void)
{
 git_annotated_commit *commit;
 git_reference *ref;

 cl_git_pass(git_reference_lookup(&ref, g_repo, "refs/tags/test"));
 cl_git_pass(git_annotated_commit_from_ref(&commit, g_repo, ref));

 git_annotated_commit_free(commit);
 git_reference_free(ref);
}
