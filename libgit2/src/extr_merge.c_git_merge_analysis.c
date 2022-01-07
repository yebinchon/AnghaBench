
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;
typedef int git_annotated_commit ;


 int GIT_ERROR_MERGE ;
 int GIT_HEAD_FILE ;
 int git_error_set (int ,char*) ;
 int git_merge_analysis_for_ref (int *,int *,int *,int *,int const**,size_t) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,int ) ;

int git_merge_analysis(
 git_merge_analysis_t *analysis_out,
 git_merge_preference_t *preference_out,
 git_repository *repo,
 const git_annotated_commit **their_heads,
 size_t their_heads_len)
{
 git_reference *head_ref = ((void*)0);
 int error = 0;

 if ((error = git_reference_lookup(&head_ref, repo, GIT_HEAD_FILE)) < 0) {
  git_error_set(GIT_ERROR_MERGE, "failed to lookup HEAD reference");
  return error;
 }

 error = git_merge_analysis_for_ref(analysis_out, preference_out, repo, head_ref, their_heads, their_heads_len);

 git_reference_free(head_ref);

 return error;
}
