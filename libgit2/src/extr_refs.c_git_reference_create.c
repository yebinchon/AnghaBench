
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;


 int git_reference_create_matching (int **,int *,char const*,int const*,int,int *,char const*) ;

int git_reference_create(
 git_reference **ref_out,
 git_repository *repo,
 const char *name,
 const git_oid *id,
 int force,
 const char *log_message)
{
        return git_reference_create_matching(ref_out, repo, name, id, force, ((void*)0), log_message);
}
