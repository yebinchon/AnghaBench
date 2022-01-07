
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_merge_preference_t ;
typedef int git_merge_analysis_t ;
typedef int git_buf ;
typedef int git_annotated_commit ;


 int GIT_BUF_INIT ;
 int GIT_HEAD_FILE ;
 int GIT_REFS_HEADS_DIR ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,int ,char const*) ;
 int git_merge_analysis_for_ref (int *,int *,int ,int *,int const**,int) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int repo ;

__attribute__((used)) static void analysis_from_branch(
 git_merge_analysis_t *merge_analysis,
 git_merge_preference_t *merge_pref,
 const char *our_branchname,
 const char *their_branchname)
{
 git_buf our_refname = GIT_BUF_INIT;
 git_buf their_refname = GIT_BUF_INIT;
 git_reference *our_ref;
 git_reference *their_ref;
 git_annotated_commit *their_head;

 if (our_branchname != ((void*)0)) {
  cl_git_pass(git_buf_printf(&our_refname, "%s%s", GIT_REFS_HEADS_DIR, our_branchname));
  cl_git_pass(git_reference_lookup(&our_ref, repo, git_buf_cstr(&our_refname)));
 } else {
  cl_git_pass(git_reference_lookup(&our_ref, repo, GIT_HEAD_FILE));
 }

 cl_git_pass(git_buf_printf(&their_refname, "%s%s", GIT_REFS_HEADS_DIR, their_branchname));

 cl_git_pass(git_reference_lookup(&their_ref, repo, git_buf_cstr(&their_refname)));
 cl_git_pass(git_annotated_commit_from_ref(&their_head, repo, their_ref));

 cl_git_pass(git_merge_analysis_for_ref(merge_analysis, merge_pref, repo, our_ref, (const git_annotated_commit **)&their_head, 1));

 git_buf_dispose(&our_refname);
 git_buf_dispose(&their_refname);
 git_annotated_commit_free(their_head);
 git_reference_free(our_ref);
 git_reference_free(their_ref);
}
