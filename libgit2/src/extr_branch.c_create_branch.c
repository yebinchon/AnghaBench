
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BRANCH_LOCAL ;
 int GIT_BUF_INIT ;
 int GIT_ERROR_REFERENCE ;
 int GIT_REFS_HEADS_DIR ;
 int assert (int) ;
 int git__strcmp (char const*,char*) ;
 int git_branch_is_head (int *) ;
 scalar_t__ git_branch_lookup (int **,int *,char const*,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,char const*) ;
 scalar_t__ git_buf_printf (int *,char*,char const*) ;
 int git_commit_id (int const*) ;
 int git_error_set (int ,char*,...) ;
 int * git_object_owner (int const*) ;
 int git_reference_create (int **,int *,int ,int ,int,int ) ;
 int git_reference_free (int *) ;
 int git_repository_is_bare (int *) ;

__attribute__((used)) static int create_branch(
 git_reference **ref_out,
 git_repository *repository,
 const char *branch_name,
 const git_commit *commit,
 const char *from,
 int force)
{
 int is_unmovable_head = 0;
 git_reference *branch = ((void*)0);
 git_buf canonical_branch_name = GIT_BUF_INIT,
     log_message = GIT_BUF_INIT;
 int error = -1;
 int bare = git_repository_is_bare(repository);

 assert(branch_name && commit && ref_out);
 assert(git_object_owner((const git_object *)commit) == repository);

 if (!git__strcmp(branch_name, "HEAD")) {
  git_error_set(GIT_ERROR_REFERENCE, "'HEAD' is not a valid branch name");
  error = -1;
  goto cleanup;
 }

 if (force && !bare && git_branch_lookup(&branch, repository, branch_name, GIT_BRANCH_LOCAL) == 0) {
  error = git_branch_is_head(branch);
  git_reference_free(branch);
  branch = ((void*)0);

  if (error < 0)
   goto cleanup;

  is_unmovable_head = error;
 }

 if (is_unmovable_head && force) {
  git_error_set(GIT_ERROR_REFERENCE, "cannot force update branch '%s' as it is "
   "the current HEAD of the repository.", branch_name);
  error = -1;
  goto cleanup;
 }

 if (git_buf_joinpath(&canonical_branch_name, GIT_REFS_HEADS_DIR, branch_name) < 0)
  goto cleanup;

 if (git_buf_printf(&log_message, "branch: Created from %s", from) < 0)
  goto cleanup;

 error = git_reference_create(&branch, repository,
  git_buf_cstr(&canonical_branch_name), git_commit_id(commit), force,
  git_buf_cstr(&log_message));

 if (!error)
  *ref_out = branch;

cleanup:
 git_buf_dispose(&canonical_branch_name);
 git_buf_dispose(&log_message);
 return error;
}
