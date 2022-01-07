
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int git_reference_lookup_resolved (int **,int *,char const*,int ) ;

int git_reference_lookup(git_reference **ref_out,
 git_repository *repo, const char *name)
{
 return git_reference_lookup_resolved(ref_out, repo, name, 0);
}
