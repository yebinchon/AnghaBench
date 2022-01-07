
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int const git_oid ;


 int GIT_ENOTFOUND ;
 int git_merge_base (int const*,int *,int const*,int const*) ;
 int git_oid_equal (int const*,int const*) ;

int git_graph_descendant_of(git_repository *repo, const git_oid *commit, const git_oid *ancestor)
{
 git_oid merge_base;
 int error;

 if (git_oid_equal(commit, ancestor))
  return 0;

 error = git_merge_base(&merge_base, repo, commit, ancestor);

 if (error == GIT_ENOTFOUND)
  return 0;

 if (error < 0)
  return error;

 return git_oid_equal(&merge_base, ancestor);
}
