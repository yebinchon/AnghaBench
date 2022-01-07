
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_annotated_commit ;


 int annotated_commit_init_from_id (int **,int *,int const*,int *) ;

int git_annotated_commit_lookup(
 git_annotated_commit **out,
 git_repository *repo,
 const git_oid *id)
{
 return annotated_commit_init_from_id(out, repo, id, ((void*)0));
}
