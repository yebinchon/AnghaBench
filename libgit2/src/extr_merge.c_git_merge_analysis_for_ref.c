
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;
typedef int const git_annotated_commit ;


 int GIT_ERROR_MERGE ;
 int GIT_MERGE_ANALYSIS_FASTFORWARD ;
 int GIT_MERGE_ANALYSIS_NONE ;
 int GIT_MERGE_ANALYSIS_NORMAL ;
 int GIT_MERGE_ANALYSIS_UNBORN ;
 int GIT_MERGE_ANALYSIS_UP_TO_DATE ;
 int assert (int) ;
 int git_annotated_commit_free (int const*) ;
 int git_annotated_commit_id (int const*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_oid_equal (int ,int ) ;
 int git_reference__is_unborn_head (int*,int *,int *) ;
 int merge_heads (int const**,int const**,int *,int *,int const**,size_t) ;
 int merge_preference (int *,int *) ;

int git_merge_analysis_for_ref(
 git_merge_analysis_t *analysis_out,
 git_merge_preference_t *preference_out,
 git_repository *repo,
 git_reference *our_ref,
 const git_annotated_commit **their_heads,
 size_t their_heads_len)
{
 git_annotated_commit *ancestor_head = ((void*)0), *our_head = ((void*)0);
 int error = 0;
 bool unborn;

 assert(analysis_out && preference_out && repo && their_heads && their_heads_len > 0);

 if (their_heads_len != 1) {
  git_error_set(GIT_ERROR_MERGE, "can only merge a single branch");
  error = -1;
  goto done;
 }

 *analysis_out = GIT_MERGE_ANALYSIS_NONE;

 if ((error = merge_preference(preference_out, repo)) < 0)
  goto done;

 if ((error = git_reference__is_unborn_head(&unborn, our_ref, repo)) < 0)
  goto done;

 if (unborn) {
  *analysis_out |= GIT_MERGE_ANALYSIS_FASTFORWARD | GIT_MERGE_ANALYSIS_UNBORN;
  error = 0;
  goto done;
 }

 if ((error = merge_heads(&ancestor_head, &our_head, repo, our_ref, their_heads, their_heads_len)) < 0)
  goto done;


 if (ancestor_head && git_oid_equal(
  git_annotated_commit_id(ancestor_head), git_annotated_commit_id(their_heads[0])))
  *analysis_out |= GIT_MERGE_ANALYSIS_UP_TO_DATE;


 else if (ancestor_head && git_oid_equal(
  git_annotated_commit_id(ancestor_head), git_annotated_commit_id(our_head)))
  *analysis_out |= GIT_MERGE_ANALYSIS_FASTFORWARD | GIT_MERGE_ANALYSIS_NORMAL;


 else
  *analysis_out |= GIT_MERGE_ANALYSIS_NORMAL;

done:
 git_annotated_commit_free(ancestor_head);
 git_annotated_commit_free(our_head);
 return error;
}
