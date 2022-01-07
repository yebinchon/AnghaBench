
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;


 int git_blob__create_from_paths (int *,int *,int *,int *,char const*,int ,int) ;

int git_blob_create_from_workdir(
 git_oid *id, git_repository *repo, const char *path)
{
 return git_blob__create_from_paths(id, ((void*)0), repo, ((void*)0), path, 0, 1);
}
