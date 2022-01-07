
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit_list_node ;


 scalar_t__ ahead_behind (int *,int *,size_t*,size_t*) ;
 int * git_revwalk__commit_lookup (int *,int const*) ;
 int git_revwalk_free (int *) ;
 scalar_t__ git_revwalk_new (int **,int *) ;
 scalar_t__ mark_parents (int *,int *,int *) ;

int git_graph_ahead_behind(size_t *ahead, size_t *behind, git_repository *repo,
 const git_oid *local, const git_oid *upstream)
{
 git_revwalk *walk;
 git_commit_list_node *commit_u, *commit_l;

 if (git_revwalk_new(&walk, repo) < 0)
  return -1;

 commit_u = git_revwalk__commit_lookup(walk, upstream);
 if (commit_u == ((void*)0))
  goto on_error;

 commit_l = git_revwalk__commit_lookup(walk, local);
 if (commit_l == ((void*)0))
  goto on_error;

 if (mark_parents(walk, commit_l, commit_u) < 0)
  goto on_error;
 if (ahead_behind(commit_l, commit_u, ahead, behind) < 0)
  goto on_error;

 git_revwalk_free(walk);

 return 0;

on_error:
 git_revwalk_free(walk);
 return -1;
}
