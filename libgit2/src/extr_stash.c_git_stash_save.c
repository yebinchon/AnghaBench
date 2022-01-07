
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_STASH_INCLUDE_IGNORED ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int GIT_STASH_KEEP_INDEX ;
 int assert (int ) ;
 int commit_index (int **,int *,int *,int const*,int ,int *) ;
 int commit_untracked (int **,int *,int const*,int ,int *,int) ;
 int commit_worktree (int *,int *,int const*,int ,int *,int *,int *) ;
 int ensure_there_are_changes_to_stash (int *,int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_rtrim (int *) ;
 int git_commit_free (int *) ;
 int git_index_free (int *) ;
 int git_repository__ensure_not_bare (int *,char*) ;
 int git_repository_index (int **,int *) ;
 int prepare_worktree_commit_message (int *,char const*) ;
 int reset_index_and_workdir (int *,int *,int) ;
 int retrieve_base_commit_and_message (int **,int *,int *) ;
 int update_reflog (int *,int *,int ) ;

int git_stash_save(
 git_oid *out,
 git_repository *repo,
 const git_signature *stasher,
 const char *message,
 uint32_t flags)
{
 git_index *index = ((void*)0);
 git_commit *b_commit = ((void*)0), *i_commit = ((void*)0), *u_commit = ((void*)0);
 git_buf msg = GIT_BUF_INIT;
 int error;

 assert(out && repo && stasher);

 if ((error = git_repository__ensure_not_bare(repo, "stash save")) < 0)
  return error;

 if ((error = retrieve_base_commit_and_message(&b_commit, &msg, repo)) < 0)
  goto cleanup;

 if ((error = ensure_there_are_changes_to_stash(repo, flags)) < 0)
  goto cleanup;

 if ((error = git_repository_index(&index, repo)) < 0)
  goto cleanup;

 if ((error = commit_index(&i_commit, repo, index, stasher,
      git_buf_cstr(&msg), b_commit)) < 0)
  goto cleanup;

 if ((flags & (GIT_STASH_INCLUDE_UNTRACKED | GIT_STASH_INCLUDE_IGNORED)) &&
     (error = commit_untracked(&u_commit, repo, stasher,
          git_buf_cstr(&msg), i_commit, flags)) < 0)
  goto cleanup;

 if ((error = prepare_worktree_commit_message(&msg, message)) < 0)
  goto cleanup;

 if ((error = commit_worktree(out, repo, stasher, git_buf_cstr(&msg),
         i_commit, b_commit, u_commit)) < 0)
  goto cleanup;

 git_buf_rtrim(&msg);

 if ((error = update_reflog(out, repo, git_buf_cstr(&msg))) < 0)
  goto cleanup;

 if ((error = reset_index_and_workdir(repo, (flags & GIT_STASH_KEEP_INDEX) ? i_commit : b_commit,
          flags)) < 0)
  goto cleanup;

cleanup:

 git_buf_dispose(&msg);
 git_commit_free(i_commit);
 git_commit_free(b_commit);
 git_commit_free(u_commit);
 git_index_free(index);

 return error;
}
