
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_8__ {int entries; } ;
typedef TYPE_1__ git_index ;
typedef int git_commit ;


 int GIT_CONFIGMAP_IGNORECASE ;
 int build_workdir_tree (int **,int *,TYPE_1__*,int *) ;
 int git_commit_create (int *,int *,int *,int const*,int const*,int *,char const*,int *,int,int const**) ;
 scalar_t__ git_index__fill (TYPE_1__*,int *) ;
 int git_index__set_ignore_case (TYPE_1__*,int) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_new (TYPE_1__**) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;
 scalar_t__ git_repository_index (TYPE_1__**,int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static int commit_worktree(
 git_oid *w_commit_oid,
 git_repository *repo,
 const git_signature *stasher,
 const char *message,
 git_commit *i_commit,
 git_commit *b_commit,
 git_commit *u_commit)
{
 const git_commit *parents[] = { ((void*)0), ((void*)0), ((void*)0) };
 git_index *i_index = ((void*)0), *r_index = ((void*)0);
 git_tree *w_tree = ((void*)0);
 int error = 0, ignorecase;

 parents[0] = b_commit;
 parents[1] = i_commit;
 parents[2] = u_commit;

 if ((error = git_repository_index(&r_index, repo) < 0) ||
     (error = git_index_new(&i_index)) < 0 ||
     (error = git_index__fill(i_index, &r_index->entries) < 0) ||
     (error = git_repository__configmap_lookup(&ignorecase, repo, GIT_CONFIGMAP_IGNORECASE)) < 0)
  goto cleanup;

 git_index__set_ignore_case(i_index, ignorecase);

 if ((error = build_workdir_tree(&w_tree, repo, i_index, b_commit)) < 0)
  goto cleanup;

 error = git_commit_create(
  w_commit_oid,
  repo,
  ((void*)0),
  stasher,
  stasher,
  ((void*)0),
  message,
  w_tree,
  u_commit ? 3 : 2,
  parents);

cleanup:
 git_tree_free(w_tree);
 git_index_free(i_index);
 git_index_free(r_index);
 return error;
}
