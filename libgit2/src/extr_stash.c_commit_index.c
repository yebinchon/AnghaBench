
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int build_tree_from_index (int **,int *,int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*) ;
 int git_commit_create (int *,int ,int *,int const*,int const*,int *,int ,int *,int,int const**) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_owner (int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int commit_index(
 git_commit **i_commit,
 git_repository *repo,
 git_index *index,
 const git_signature *stasher,
 const char *message,
 const git_commit *parent)
{
 git_tree *i_tree = ((void*)0);
 git_oid i_commit_oid;
 git_buf msg = GIT_BUF_INIT;
 int error;

 if ((error = build_tree_from_index(&i_tree, repo, index)) < 0)
  goto cleanup;

 if ((error = git_buf_printf(&msg, "index on %s\n", message)) < 0)
  goto cleanup;

 if ((error = git_commit_create(
  &i_commit_oid,
  git_index_owner(index),
  ((void*)0),
  stasher,
  stasher,
  ((void*)0),
  git_buf_cstr(&msg),
  i_tree,
  1,
  &parent)) < 0)
  goto cleanup;

 error = git_commit_lookup(i_commit, git_index_owner(index), &i_commit_oid);

cleanup:
 git_tree_free(i_tree);
 git_buf_dispose(&msg);
 return error;
}
