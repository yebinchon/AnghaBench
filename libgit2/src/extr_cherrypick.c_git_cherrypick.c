
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_indexwriter ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_8__ {int checkout_strategy; } ;
struct TYPE_7__ {TYPE_3__ checkout_opts; int merge_opts; int mainline; } ;
typedef TYPE_1__ git_cherrypick_options ;
typedef int git_buf ;
typedef int commit_oidstr ;


 int GIT_BUF_INIT ;
 int GIT_CHERRYPICK_OPTIONS_VERSION ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__ const*,int ,char*) ;
 int GIT_INDEXWRITER_INIT ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OID_HEXSZ ;
 int assert (int) ;
 int cherrypick_normalize_opts (int *,TYPE_1__*,TYPE_1__ const*,int ) ;
 int cherrypick_state_cleanup (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char*,char const*) ;
 int git_checkout_index (int *,int *,TYPE_3__*) ;
 int git_cherrypick_commit (int **,int *,int *,int *,int ,int *) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 char* git_commit_message (int *) ;
 char* git_commit_summary (int *) ;
 int git_index_free (int *) ;
 int git_indexwriter_cleanup (int *) ;
 int git_indexwriter_commit (int *) ;
 int git_indexwriter_init_for_operation (int *,int *,int *) ;
 int git_merge__append_conflicts_to_merge_msg (int *,int *) ;
 int git_merge__check_result (int *,int *) ;
 int git_oid_nfmt (char*,int,int ) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository__ensure_not_bare (int *,char*) ;
 int git_repository_head (int **,int *) ;
 int write_cherrypick_head (int *,char*) ;
 int write_merge_msg (int *,char const*) ;

int git_cherrypick(
 git_repository *repo,
 git_commit *commit,
 const git_cherrypick_options *given_opts)
{
 git_cherrypick_options opts;
 git_reference *our_ref = ((void*)0);
 git_commit *our_commit = ((void*)0);
 char commit_oidstr[GIT_OID_HEXSZ + 1];
 const char *commit_msg, *commit_summary;
 git_buf their_label = GIT_BUF_INIT;
 git_index *index = ((void*)0);
 git_indexwriter indexwriter = GIT_INDEXWRITER_INIT;
 int error = 0;

 assert(repo && commit);

 GIT_ERROR_CHECK_VERSION(given_opts, GIT_CHERRYPICK_OPTIONS_VERSION, "git_cherrypick_options");

 if ((error = git_repository__ensure_not_bare(repo, "cherry-pick")) < 0)
  return error;

 if ((commit_msg = git_commit_message(commit)) == ((void*)0) ||
  (commit_summary = git_commit_summary(commit)) == ((void*)0)) {
  error = -1;
  goto on_error;
 }

 git_oid_nfmt(commit_oidstr, sizeof(commit_oidstr), git_commit_id(commit));

 if ((error = write_merge_msg(repo, commit_msg)) < 0 ||
  (error = git_buf_printf(&their_label, "%.7s... %s", commit_oidstr, commit_summary)) < 0 ||
  (error = cherrypick_normalize_opts(repo, &opts, given_opts, git_buf_cstr(&their_label))) < 0 ||
  (error = git_indexwriter_init_for_operation(&indexwriter, repo, &opts.checkout_opts.checkout_strategy)) < 0 ||
  (error = write_cherrypick_head(repo, commit_oidstr)) < 0 ||
  (error = git_repository_head(&our_ref, repo)) < 0 ||
  (error = git_reference_peel((git_object **)&our_commit, our_ref, GIT_OBJECT_COMMIT)) < 0 ||
  (error = git_cherrypick_commit(&index, repo, commit, our_commit, opts.mainline, &opts.merge_opts)) < 0 ||
  (error = git_merge__check_result(repo, index)) < 0 ||
  (error = git_merge__append_conflicts_to_merge_msg(repo, index)) < 0 ||
  (error = git_checkout_index(repo, index, &opts.checkout_opts)) < 0 ||
  (error = git_indexwriter_commit(&indexwriter)) < 0)
  goto on_error;

 goto done;

on_error:
 cherrypick_state_cleanup(repo);

done:
 git_indexwriter_cleanup(&indexwriter);
 git_index_free(index);
 git_commit_free(our_commit);
 git_reference_free(our_ref);
 git_buf_dispose(&their_label);

 return error;
}
