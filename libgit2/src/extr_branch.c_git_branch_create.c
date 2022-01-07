
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_commit ;


 int create_branch (int **,int *,char const*,int const*,int ,int) ;
 int git_commit_id (int const*) ;
 int git_oid_tostr_s (int ) ;

int git_branch_create(
 git_reference **ref_out,
 git_repository *repository,
 const char *branch_name,
 const git_commit *commit,
 int force)
{
 return create_branch(ref_out, repository, branch_name, commit, git_oid_tostr_s(git_commit_id(commit)), force);
}
