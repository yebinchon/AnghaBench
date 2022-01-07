
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int git_reference_symbolic_create_matching (int **,int *,char const*,char const*,int,int *,char const*) ;

int git_reference_symbolic_create(
 git_reference **ref_out,
 git_repository *repo,
 const char *name,
 const char *target,
 int force,
 const char *log_message)
{
 return git_reference_symbolic_create_matching(ref_out, repo, name, target, force, ((void*)0), log_message);
}
