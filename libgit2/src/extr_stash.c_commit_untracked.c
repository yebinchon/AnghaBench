
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int build_untracked_tree (int **,int *,int *,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*) ;
 int git_commit_create (int *,int *,int *,int const*,int const*,int *,int ,int *,int ,int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int commit_untracked(
 git_commit **u_commit,
 git_repository *repo,
 const git_signature *stasher,
 const char *message,
 git_commit *i_commit,
 uint32_t flags)
{
 git_tree *u_tree = ((void*)0);
 git_oid u_commit_oid;
 git_buf msg = GIT_BUF_INIT;
 int error;

 if ((error = build_untracked_tree(&u_tree, repo, i_commit, flags)) < 0)
  goto cleanup;

 if ((error = git_buf_printf(&msg, "untracked files on %s\n", message)) < 0)
  goto cleanup;

 if ((error = git_commit_create(
  &u_commit_oid,
  repo,
  ((void*)0),
  stasher,
  stasher,
  ((void*)0),
  git_buf_cstr(&msg),
  u_tree,
  0,
  ((void*)0))) < 0)
  goto cleanup;

 error = git_commit_lookup(u_commit, repo, &u_commit_oid);

cleanup:
 git_tree_free(u_tree);
 git_buf_dispose(&msg);
 return error;
}
